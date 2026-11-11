.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sub eax, eax
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
lea edx, qword ptr [rax + rcx + 16]
cmp dx, 48
sbb ebx, 9
add bl, 10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 59
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 10
jmp .bb_0.1
.bb_0.1:
neg cl
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
cwd
adc dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
