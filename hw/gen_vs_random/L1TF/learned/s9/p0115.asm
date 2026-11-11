.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 27
sbb sil, bl
and dl, -49
sub al, -97
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
sbb cl, al
lea di, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
