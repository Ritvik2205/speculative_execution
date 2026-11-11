.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, -93
xor di, dx
bswap eax
xor rdi, -80
lea di, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sub dl, 41
add al, dil
test al, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
cmovno edx, edx
lea rsi, qword ptr [rdi + rax]
cmovnbe eax, ecx
or dil, cl
lea rdi, qword ptr [rax + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
