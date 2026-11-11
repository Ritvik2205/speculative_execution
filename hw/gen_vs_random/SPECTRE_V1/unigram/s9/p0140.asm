.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax, ebx, 62
cmovnz rax, rsi
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 52
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
cmovo rdi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
add al, 19 # instrumentation
setnz cl
sbb eax, edx
jo .bb_0.1
jmp .exit_0
.bb_0.1:
setp al
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
setb dl
add ax, 6980
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
