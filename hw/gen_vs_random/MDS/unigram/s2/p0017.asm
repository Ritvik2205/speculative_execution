.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 84
cmovns edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and bx, cx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 36
and dl, 110 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
btc dx, bx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
and rdx, 49
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
cmovp edx, ecx
or dl, sil
cmovs edi, edx
and al, -56 # instrumentation
cmovl rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
