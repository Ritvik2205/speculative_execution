.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovno rbx, rcx
sbb eax, 1332762061
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rax + rcx]
movzx edx, di
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
add cl, al
not ecx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 34
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
add cl, 11 # instrumentation
cmovns ebx, edx
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
xor edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
