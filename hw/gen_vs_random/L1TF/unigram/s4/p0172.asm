.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
sbb di, 80
cmp dil, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
movsx cx, dil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
xor al, al
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
or ebx, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
