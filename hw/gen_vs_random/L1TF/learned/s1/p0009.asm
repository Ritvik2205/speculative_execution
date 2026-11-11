.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 38
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
sub al, -97
and sil, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 9
sbb cl, al
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
