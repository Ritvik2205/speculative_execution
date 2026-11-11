.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and si, -121
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 58
or cl, -77
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
cmovs eax, edi
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and bx, 49
cmovle rbx, rbx
cmovl edi, ecx
jmp .bb_0.1
.bb_0.1:
btc ecx, 85
or al, 25
and sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and cl, -44 # instrumentation
cmovno rdx, rdi
cmovb rsi, rdx
cmovs rbx, rcx
or bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
