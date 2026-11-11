.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
not dil
bts rax, 77
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmovle si, di
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
or bl, al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and cl, bl
or al, -61
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
xor ebx, 42
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
cmovl rdx, rax
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
