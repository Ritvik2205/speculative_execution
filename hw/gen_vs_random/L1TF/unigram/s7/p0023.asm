.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, -11
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
lea ebx, qword ptr [rdi + rcx]
sbb al, bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
add bl, -79 # instrumentation
cmovo dx, si
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 5
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdi + rsi + 32]
adc rcx, 98
xor dl, cl
add dl, -1
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
cmovno esi, esi
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rcx
test dx, dx
cmovs bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
