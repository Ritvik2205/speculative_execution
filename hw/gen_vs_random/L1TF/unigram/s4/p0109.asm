.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
cmovnp edx, ebx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
add cl, -110 # instrumentation
setbe bl
xor cl, cl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
xchg bx, cx
and dl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
