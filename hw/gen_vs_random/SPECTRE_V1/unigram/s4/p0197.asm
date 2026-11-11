.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rax, rcx
setnb bl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
add dl, 71 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
setp cl
or rbx, rbx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
movsx edx, dil
add cl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and sil, 11
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
