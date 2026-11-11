.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle esi, edx
or ebx, eax
or dil, dl
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
cmovb cx, si
bts rdx, 200
cmovbe rdx, rdi
btc rdx, rdx
cmovp si, cx
or bl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
xor al, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
or cl, 39
or bl, al
and cl, 78 # instrumentation
cmovs bx, cx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
btr rdi, 129
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
