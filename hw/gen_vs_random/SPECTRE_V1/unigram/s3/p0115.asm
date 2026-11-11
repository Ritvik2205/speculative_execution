.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
add cl, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
sub ax, di
adc cx, si
mov ax, 74
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
not rdx
cmp bl, -114
mov cl, al
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
