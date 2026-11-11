.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
mul rcx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
lea bx, qword ptr [rdx]
lea ax, qword ptr [rdi + rsi + 77]
cmovnp si, dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test cl, -62
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
xchg dil, bl
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
