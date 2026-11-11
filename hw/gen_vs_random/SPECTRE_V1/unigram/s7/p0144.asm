.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setl bl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
mul al
setp al
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
adc cl, bl
add cl, 126 # instrumentation
cmovnl ax, cx
or al, 100
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
lea rax, qword ptr [rsi + rax + 13]
add cl, 28 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
movzx di, bl
imul rcx
add al, -53 # instrumentation
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
