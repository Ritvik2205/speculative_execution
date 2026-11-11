.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, rdi
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 50
test dl, sil
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
imul al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
add ecx, 38
add dl, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 6
sbb al, bl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
cmp ecx, ebx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
