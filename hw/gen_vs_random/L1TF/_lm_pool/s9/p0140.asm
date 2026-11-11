.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
add rax, 909978580
or cl, -78
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
not cx
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
lea rsi, qword ptr [rbx + rdx + 19]
and dil, 58
sub dil, 87
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
