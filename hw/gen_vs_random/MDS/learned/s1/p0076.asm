.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
btr edi, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
btc di, si
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdx
cmovo dx, cx
jmp .bb_0.1
.bb_0.1:
bt si, bx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
or al, -48
btr rdx, 194
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
not eax
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
cmovns si, si
test cl, 36
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
