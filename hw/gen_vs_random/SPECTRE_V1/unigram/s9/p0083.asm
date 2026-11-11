.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rdx + rdx + 43]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
xor eax, edi
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
cmp cx, 19
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sub cl, dl
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 15
neg dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
