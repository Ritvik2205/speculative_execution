.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
jns .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, 91
sub al, -89
inc rax
sub al, -66
cmp al, cl
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
sub dil, dil
xor dil, al
or cl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
