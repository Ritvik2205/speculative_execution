.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edx
add dil, bl
and rdx, -98
imul rdx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 51
add cl, 112 # instrumentation
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ebx
bt edx, 27
jl .bb_0.1
jmp .exit_0
.bb_0.1:
inc rdi
cmovz cx, cx
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 75
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
xor dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
