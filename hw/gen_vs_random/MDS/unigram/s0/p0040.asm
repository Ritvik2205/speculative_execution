.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 6
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
bt rcx, 14
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
xor rcx, -2
and sil, 89
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 75
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
or cl, 30
cmovp rdi, rdx
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 18
and al, al
and rdi, 73
cmovo edi, esi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
