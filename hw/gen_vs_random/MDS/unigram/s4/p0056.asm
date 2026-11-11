.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 16
cmovbe rcx, rdx
cmovbe rax, rsi
and cl, al
and bl, -56 # instrumentation
cmovnle ecx, esi
cmovp edi, edx
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
btr di, cx
not sil
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
and cl, 112 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and edi, edx
and al, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
xor dil, al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
