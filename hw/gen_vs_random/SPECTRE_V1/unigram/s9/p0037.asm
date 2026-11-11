.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
setz al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
cmp rdx, -19
sub al, -1
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rcx]
xor bx, 47
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
mov cl, sil
cmp rcx, 84
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sbb cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
