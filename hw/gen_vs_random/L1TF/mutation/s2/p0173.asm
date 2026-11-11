.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rsi + rcx + 45165]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
add bl, -22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
not di
lea ebx, qword ptr [rax + rdx + 2427]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
or rsi, rsi
adc dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
sbb di, 80
mov ecx, -1856082135
or bl, -5
cmovbe rbx, rdx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
imul rcx
lea rcx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
