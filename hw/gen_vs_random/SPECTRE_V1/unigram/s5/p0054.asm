.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
test rbx, rdi
sub bl, sil
adc rcx, rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb edi, eax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 31
imul eax
imul bx, dx, 26
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 49
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 14
imul esi, edx
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
