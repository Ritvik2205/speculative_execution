.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
test al, cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
adc al, -92
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 107 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
movsx di, al
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
add al, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
setnle al
and sil, 52
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
