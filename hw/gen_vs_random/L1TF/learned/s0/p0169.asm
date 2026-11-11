.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 95
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
sub dl, 41
sbb cl, bl
mov sil, al
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rsi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
