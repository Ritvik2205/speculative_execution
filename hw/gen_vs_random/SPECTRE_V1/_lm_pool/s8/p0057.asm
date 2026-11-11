.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
sbb al, -112
sub cl, -21
xor al, al
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
add dil, 72
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 36
and rdx, -98
sub dil, -32
cmp dl, 71
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
