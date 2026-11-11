.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
lea ebx, qword ptr [rcx + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
btr esi, eax
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
xor dil, dil
and dil, 63
lea rbx, qword ptr [rbx]
sbb di, 84
lea rdi, qword ptr [rcx + rax + 9]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rdx + rsi]
setnbe bl
lea bx, qword ptr [rax + rax + 99]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
