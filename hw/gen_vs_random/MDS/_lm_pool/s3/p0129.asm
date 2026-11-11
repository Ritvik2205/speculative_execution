.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
test ecx, -1843375753
xor cl, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
mov dl, dil
or bl, dl
btr rdx, 46
and dil, -39
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 69
test al, sil
xor dl, 40
xor ax, 23633
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
