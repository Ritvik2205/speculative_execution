.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test dl, cl
or bl, dl
btc cx, si
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
btc dx, si
sub al, dil
test bl, dil
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
