.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 39 # instrumentation
setle sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
cmovnp dx, ax
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
adc dil, 120
btr ebx, 54
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
cmovp ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
lea ax, qword ptr [rcx + rdi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
cmovz ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
