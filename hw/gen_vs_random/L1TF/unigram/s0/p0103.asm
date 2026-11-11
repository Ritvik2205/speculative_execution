.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe al
test rdx, rax
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
cmovp edx, edi
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
xor cl, cl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
sub dl, 39
cmovl dx, bx
sub dl, 75
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 20
sbb dil, al
jmp .bb_0.1
.bb_0.1:
add cl, -110 # instrumentation
setbe bl
cmovnbe di, bx
sbb cl, al
adc cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
