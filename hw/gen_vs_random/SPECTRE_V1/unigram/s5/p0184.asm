.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and dil, -93
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
imul cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test si, 59
cmp ax, cx
add dl, -127 # instrumentation
setp al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rbx
seto dl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
