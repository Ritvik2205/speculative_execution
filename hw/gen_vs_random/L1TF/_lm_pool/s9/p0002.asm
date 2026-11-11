.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
or dil, dl
or dil, -113
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 51
sub dil, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
adc sil, 91
lea rax, qword ptr [rcx + rsi]
and rsi, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
