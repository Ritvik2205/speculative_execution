.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
bts eax, 232
bt edi, edx
lea si, qword ptr [rsi + rdx + 44163]
inc rdi
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
imul bx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
test bl, 84
setno bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
adc cl, -34
jmp .bb_0.2
.bb_0.2:
add al, -9 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -83
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
lea ax, qword ptr [rax + rcx + 41285]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
