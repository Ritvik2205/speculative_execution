.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xchg dx, bx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
xor edx, edi
jmp .bb_0.1
.bb_0.1:
add dx, bx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
lea di, qword ptr [rsi]
adc eax, 551972257
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -9758
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
