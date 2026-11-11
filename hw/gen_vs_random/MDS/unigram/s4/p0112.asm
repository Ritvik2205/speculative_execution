.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
cmovs bx, di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 34
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
jmp .bb_0.1
.bb_0.1:
xor cl, 122
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 46
cmovnle eax, edi
and edx, 77
cmovno ax, si
cmovo eax, esi
test rdx, -1624442902
and al, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
