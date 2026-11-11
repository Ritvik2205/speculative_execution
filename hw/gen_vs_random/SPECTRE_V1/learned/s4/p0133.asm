.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 112
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setns dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add si, di
xor al, -41
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
lea rcx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmp dl, 69
lea ax, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
mul dil
cmovp ax, di
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
