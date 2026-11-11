.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edx
and al, -23
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
add dl, 47
dec dl
lea dx, qword ptr [rdx]
xchg ebx, eax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
test cl, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
