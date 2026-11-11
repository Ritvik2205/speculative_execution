.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and edx, esi
adc esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
lea ecx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add al, al
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
add bl, -4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 70
adc eax, 551972257
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
