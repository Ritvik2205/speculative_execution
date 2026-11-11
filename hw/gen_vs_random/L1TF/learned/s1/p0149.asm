.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test dil, -126
or cx, 41
jmp .bb_0.2
.bb_0.2:
imul edx, ebx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
lea rbx, qword ptr [rdi + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
