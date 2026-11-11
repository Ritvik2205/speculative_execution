.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 23
xor cl, al
sub al, 9
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and bx, 63
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb dl, al
test rdx, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
