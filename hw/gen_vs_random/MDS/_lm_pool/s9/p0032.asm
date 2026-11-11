.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, ax
and rsi, 96
and dl, dl
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and sil, bl
or al, -78
and sil, -56
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
xor al, 34
or sil, -78
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
bt ax, bx
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
