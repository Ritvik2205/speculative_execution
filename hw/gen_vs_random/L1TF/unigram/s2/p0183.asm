.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
mov bl, bl
cmovnb si, cx
adc cl, dil
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
add cl, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
movsx rsi, si
inc rbx
btr eax, 231
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 20
cmp cl, cl
adc dl, dl
add edx, 56
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
