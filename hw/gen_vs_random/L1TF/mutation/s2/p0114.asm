.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
add rax, 1633593912
bts cx, cx
add cl, -73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
setnp cl
or dl, 8
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
cmovb di, cx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
sbb bl, al
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
