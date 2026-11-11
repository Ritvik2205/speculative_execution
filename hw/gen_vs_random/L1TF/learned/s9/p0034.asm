.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
test al, 15
xor dl, dil
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
or bx, 90
sub dil, 87
lea rax, qword ptr [rcx + rax + 100]
not ecx
cmovle rax, rdx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
