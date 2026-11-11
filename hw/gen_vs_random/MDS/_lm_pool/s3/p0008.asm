.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 82
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 81
test dil, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or bl, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and cl, 79
xor ax, 23633
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test ecx, -1843375753
btr cx, ax
or cl, 30
test bl, dl
xor bl, cl
or dl, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
