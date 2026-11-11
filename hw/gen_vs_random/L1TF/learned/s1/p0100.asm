.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
lea rax, qword ptr [rbx + rcx]
lea ebx, qword ptr [rdx + rsi]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and eax, esi
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 73
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
adc dl, dil
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
