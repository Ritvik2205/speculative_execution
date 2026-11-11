.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rsi
imul edx, edx, 33
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 79
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
test cl, -120
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
imul bx, bx
cmp cx, 19
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmp dil, -78
btr ecx, 98
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
