.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 22
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rax, 452940266
not sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test sil, bl
jmp .bb_0.1
.bb_0.1:
test sil, -96
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or cl, -77
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
xor ecx, 8
or dil, cl
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
