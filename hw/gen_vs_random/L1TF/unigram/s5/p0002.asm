.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -99
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdx]
lea ax, qword ptr [rax + rdi + 71]
sbb sil, sil
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
adc dx, si
xor sil, sil
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
cmp edi, 80
or bl, al
xor al, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
add al, 39 # instrumentation
cmovnb bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
