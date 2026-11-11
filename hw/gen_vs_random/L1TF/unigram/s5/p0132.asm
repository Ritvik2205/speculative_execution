.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
xor bl, bl
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
test bx, di
adc al, 70
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
test dl, al
cmp cl, 57
xor sil, sil
cmovnbe rax, rbx
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
sub ebx, ecx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
movzx rdi, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
