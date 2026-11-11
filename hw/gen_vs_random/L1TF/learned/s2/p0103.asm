.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, ax
and al, -68
and dil, 58
and dil, 58
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
xor bl, sil
xor al, 45
test sil, dil
test si, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
