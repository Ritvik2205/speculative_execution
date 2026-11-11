.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, cx
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
add rax, 909978580
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add cl, -73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
jmp .bb_0.1
.bb_0.1:
cmovb di, cx
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
sbb bl, al
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or dl, 8
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
setnp cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
