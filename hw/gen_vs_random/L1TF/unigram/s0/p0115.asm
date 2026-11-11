.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
add cl, cl
bts ecx, 164
xchg dil, bl
sub bl, 15
cmovnbe rsi, rax
adc cl, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add al, 109 # instrumentation
adc cx, 36
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 94
bswap edx
cwd
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
