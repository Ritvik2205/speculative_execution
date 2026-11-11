.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 36
sub bl, al
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmovle rbx, rax
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
test al, 42
sbb cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
