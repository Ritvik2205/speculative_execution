.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
test ecx, 729805876
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
cmovnbe rbx, rsi
or bl, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
btr rdi, 69
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
mov si, 9258
and sil, 37
sbb rax, -148104813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
