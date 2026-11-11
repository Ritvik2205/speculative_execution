.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
cmp ecx, 40
xchg al, bl
xor bl, dil
sbb bl, 79
lea ecx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
mov dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
