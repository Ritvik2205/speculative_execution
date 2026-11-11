.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 232
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
add bl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
lea si, qword ptr [rsi + rdx + 44163]
inc rdi
imul bx, si
bt edi, edx
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test bl, 84
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
setno bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
