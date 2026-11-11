.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
lea rcx, qword ptr [rdx + rdi + 16]
xchg cl, bl
test al, bl
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
mov dl, cl
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
add bl, sil
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
sbb rax, 717206440
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
