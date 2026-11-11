.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
setnp cl
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 55
lea rdx, qword ptr [rbx]
cmovns rbx, rdx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdx, rbx
sbb sil, bl
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rbx]
sets bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
lea rdx, qword ptr [rsi + rdi + 95]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
