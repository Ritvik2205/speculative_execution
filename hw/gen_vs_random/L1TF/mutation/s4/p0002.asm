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
or al, -57
inc eax
lea rax, qword ptr [rdi + rax + 36248]
lea rax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
