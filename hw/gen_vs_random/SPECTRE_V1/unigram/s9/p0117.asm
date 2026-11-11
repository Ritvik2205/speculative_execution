.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
xor edx, 6
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
add bl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
sub al, dil
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 89
add edx, 32
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
cmovnp si, di
cmp cl, 63
mov al, cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 56
adc sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
