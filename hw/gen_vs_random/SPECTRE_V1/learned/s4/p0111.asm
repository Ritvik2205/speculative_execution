.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
lea eax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
add ebx, -47
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
or al, 100
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sbb cl, 105
xor dx, -128
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
