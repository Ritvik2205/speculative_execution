.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, si
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 9
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and ax, 37
xor sil, 64
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
btc cx, ax
and dil, -82
add al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
