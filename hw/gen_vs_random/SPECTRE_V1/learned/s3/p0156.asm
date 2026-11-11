.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, 1276549484
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and cl, -57
and al, -23
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
sub al, -1
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
sub dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
