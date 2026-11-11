.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, -128
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
mul al
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
lea rcx, qword ptr [rax + rax + 88]
lea di, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], eax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
bts ax, cx
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
imul rbx, rcx, 87
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
