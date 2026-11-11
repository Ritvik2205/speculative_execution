.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
or ecx, 64
test al, 34
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xchg edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
