.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and al, 17 # instrumentation
cmovnp eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and bl, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 98
cmovnb bx, si
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
cmovp cx, si
btr rdx, 72
and dl, 120 # instrumentation
cmovnz ecx, esi
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
