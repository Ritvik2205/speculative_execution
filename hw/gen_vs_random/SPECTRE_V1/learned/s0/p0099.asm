.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lea dx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
dec rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
lea ebx, qword ptr [rdx + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
sub esi, -120
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
add al, -106
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
or bl, 75
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
test eax, 37
cmovo dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
