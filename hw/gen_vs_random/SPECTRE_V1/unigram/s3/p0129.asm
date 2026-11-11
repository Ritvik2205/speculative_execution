.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 58
add dl, 51
cmp bl, 32
bts rcx, 18
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, al
bt di, dx
inc cl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 77
adc cl, bl
add dil, 27
add al, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
