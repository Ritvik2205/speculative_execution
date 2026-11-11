.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, cx, 44
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
lea rsi, qword ptr [rdx + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
adc cl, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
dec edi
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
btc cx, ax
cmovbe bx, si
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
