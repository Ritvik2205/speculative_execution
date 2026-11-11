.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, cx
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -4
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
add bl, 20 # instrumentation
cmovnbe rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
add al, -54 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 30
test al, 70
sets al
cmovns rax, rax
xor esi, 8
btc rbx, 195
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
