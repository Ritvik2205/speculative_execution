.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -25 # instrumentation
sbb cx, di
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
add cl, 0 # instrumentation
adc al, cl
xchg ecx, edx
sbb ebx, 63
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
imul cx, dx, -88
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
btr rbx, 69
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
bt rdx, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
