.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 16
sbb dil, cl
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, 15
jmp .bb_0.2
.bb_0.2:
add al, -65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
imul dx, cx, 47
setb dil
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 70
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
