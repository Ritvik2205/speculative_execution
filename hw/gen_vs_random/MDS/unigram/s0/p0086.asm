.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rsi
jmp .bb_0.1
.bb_0.1:
or bx, bx
and rax, rax
cmovnbe ecx, eax
or bx, 49
or rsi, 23
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
cmovs rdi, rdx
and al, -33 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rax, rbx
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
bts eax, 222
and bl, 68
cmovle eax, edi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
