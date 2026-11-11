.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
btc cx, 31
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add bx, 85
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
adc al, al
setb al
xor ax, bx
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
mul dil
or di, 35
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ecx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
add dl, 109 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
