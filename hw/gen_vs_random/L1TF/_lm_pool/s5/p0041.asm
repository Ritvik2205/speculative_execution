.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
cmp eax, -234754587
test dil, dl
test al, -32
cmp rdi, 66
and dl, dl
lea si, qword ptr [rbx + rdx]
lea rsi, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
and al, 32 # instrumentation
cmovnbe eax, esi
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
