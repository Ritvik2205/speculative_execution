.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
or al, 24
test al, -81
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and al, dil
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
btc ax, si
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and dl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
cmovp di, ax
and al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
or bx, bx
cmovns esi, ebx
bts rbx, 115
and cl, -71
or bl, -125
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
