.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 100 # instrumentation
lea dx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
cmp rsi, 82
movzx dx, bl
bts dx, 35
setb dil
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
test cx, si
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
jmp .bb_0.1
.bb_0.1:
cmp ax, 24210
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rax
add al, 31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
bts rcx, rcx
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
adc dil, dil
cmovo rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
