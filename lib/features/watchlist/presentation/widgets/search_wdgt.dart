import 'package:flutter/material.dart';
import 'package:watchlist_screen_clean_architecture/core/theme/app_colors.dart';
import 'package:watchlist_screen_clean_architecture/core/theme/app_text_styles.dart';

class SearchActionBar extends StatelessWidget {
  final String hintText;
  final VoidCallback? onSearchTap;
  final VoidCallback? onGridTap;
  final VoidCallback? onFilterTap;

  const SearchActionBar({
    super.key,
    required this.hintText,
    this.onSearchTap,
    this.onGridTap,
    this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.primaryaccent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Search field
          Expanded(
            child: InkWell(
              onTap: onSearchTap,
              child: Row(
                children: [
                  const Icon(Icons.search, color: AppColors.textSecondary),
                  const SizedBox(width: 8),
                  Text(
                    hintText,
                    style: AppTextStyles.subtitle.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Grid Icon
          IconButton(
            onPressed: onGridTap,
            icon: const Icon(Icons.grid_view, color: AppColors.primary),
          ),

          // Filter Icon
          IconButton(
            onPressed: onFilterTap,
            icon: const Icon(Icons.tune, color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
