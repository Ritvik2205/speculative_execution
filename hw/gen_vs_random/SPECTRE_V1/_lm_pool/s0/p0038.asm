.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
test dl, -105
setp dil
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
test cl, -62
add al, 3
sbb eax, 125
sbb ecx, 54
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
xchg dil, al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and dl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
