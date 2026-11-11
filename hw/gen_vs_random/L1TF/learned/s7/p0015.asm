.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
add rdx, 32
btc si, di
sub al, bl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
xor al, cl
sbb cl, -11
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
add sil, bl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
