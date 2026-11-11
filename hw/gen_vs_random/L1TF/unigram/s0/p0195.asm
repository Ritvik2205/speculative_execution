.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
lea ebx, qword ptr [rbx]
and sil, 69
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdi + rbx + 19]
bt esi, 21
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
xor sil, cl
add bl, -93
add dl, 43 # instrumentation
lea rdx, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
test ebx, 32
cmp bx, 83
or edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
