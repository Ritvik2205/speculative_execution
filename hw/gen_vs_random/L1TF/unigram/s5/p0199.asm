.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 65
lea rdx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
test cl, dil
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
add dl, -52 # instrumentation
adc si, 1
add edx, 56
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
bswap rdx
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
sub al, bl
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
add dl, 37 # instrumentation
cmovbe cx, ax
cmp cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
