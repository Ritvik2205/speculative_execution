.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
mov esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
mov cl, sil
sbb al, al
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 54
cmovns di, cx
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
cmovnp rbx, rbx
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
