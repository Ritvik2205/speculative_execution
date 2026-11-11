.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 86
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
cdq
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
movsx bx, cl
imul ecx, esi, 96
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 47
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
add bl, -43 # instrumentation
adc bx, 67
mov dil, al
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
cmovbe cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
