.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 60
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
cmovz rdi, rcx
add dl, -89 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 88
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
imul rdi
dec dil
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 26
lea edi, qword ptr [rdi]
neg cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
