.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and dl, 32
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rax, -109
not eax
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
