.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
test eax, -571234566
test al, 66
or al, 24
or al, dil
or dl, al
xor ax, 23633
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test dil, bl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
xor rcx, 71
or al, bl
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
cmovle cx, ax
and ebx, 96
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
