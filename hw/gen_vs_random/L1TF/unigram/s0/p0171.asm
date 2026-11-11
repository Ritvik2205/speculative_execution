.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
xchg al, bl
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
lea ax, qword ptr [rax + rdi + 98]
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 44
test edx, 57
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
lea rdi, qword ptr [rsi + rbx + 84]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
adc dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
