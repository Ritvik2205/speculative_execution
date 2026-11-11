.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, 24
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 40
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 82
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rsi]
xor rbx, 95
mov rsi, 8418490294875847673
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 2
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 3
or cx, dx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 59
adc al, 91
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
