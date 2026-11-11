.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rdi, rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
test edx, -541774418
setns cl
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
and dl, dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 26
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 58
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
sub ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
