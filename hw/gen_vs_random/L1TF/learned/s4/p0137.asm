.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 73
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and al, -68
xor al, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
or al, -57
sub rbx, 9
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 23
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
