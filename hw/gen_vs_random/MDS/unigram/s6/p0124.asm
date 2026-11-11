.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
or ebx, eax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 74
btr dx, 47
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
or rbx, -72
and bx, si
bts rcx, 42
btc rsi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
xor di, 40
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
cmovp cx, dx
and di, 91
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
