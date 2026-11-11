.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, -17
not dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
cmovle bx, dx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
cmovnb ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 99
cmovz di, di
cmovp ax, di
or cl, 30
cmovns esi, edx
or al, dl
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and bl, 120 # instrumentation
cmovnp ax, bx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
