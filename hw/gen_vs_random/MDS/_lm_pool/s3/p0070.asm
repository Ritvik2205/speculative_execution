.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
or bl, al
or rsi, 44
xor dl, cl
jmp .bb_0.1
.bb_0.1:
test dil, 46
btr ebx, edi
test al, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
xor cl, dl
and dx, 3
test sil, 41
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
