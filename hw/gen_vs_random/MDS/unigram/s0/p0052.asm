.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
bts esi, 61
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 75
btr rbx, 155
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 34
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
cmovns si, di
or rdx, -48
xor al, cl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
or bl, bl
test sil, 41
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
