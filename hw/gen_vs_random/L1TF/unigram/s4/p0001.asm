.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], di
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
jmp .bb_0.1
.bb_0.1:
test al, -82
add bl, 48 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 60
or dil, -113
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
sbb rdi, 43
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and cl, 65
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
