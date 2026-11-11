.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
xchg al, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
add bl, -93
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 12
or bl, 61
sbb cl, al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
movzx cx, dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
test cx, 32579
add bl, -93
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
