.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
or rsi, 1
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
or cl, cl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
xor al, sil
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
cmovs ecx, ebx
cmovnz rcx, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
cmovz di, di
and bl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
btc rcx, rcx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
and sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
cmovle rbx, rdx
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
