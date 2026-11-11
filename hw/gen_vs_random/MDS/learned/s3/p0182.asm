.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
not sil
xor rsi, -117
test al, 22
or al, -78
or al, sil
and dx, 3
or al, 16
test ecx, -1843375753
or rax, 1020005579
xor dl, -19
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and al, -103
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 85
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
