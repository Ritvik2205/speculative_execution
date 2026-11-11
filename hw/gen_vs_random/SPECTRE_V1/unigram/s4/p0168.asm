.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul esi, ebx, 47
lea rdx, qword ptr [rsi + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
sub ax, di
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
cmovs rcx, rcx
movzx eax, bx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb eax, ebx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and cl, 86
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
