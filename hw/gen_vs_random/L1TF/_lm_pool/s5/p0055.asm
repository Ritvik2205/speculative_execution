.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
xor sil, 64
lea edi, qword ptr [rbx + rbx + 10]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 28
add dl, dil
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
cmovb ax, di
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
cmp cl, -89
jmp .bb_0.4
.bb_0.4:
sub bl, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
