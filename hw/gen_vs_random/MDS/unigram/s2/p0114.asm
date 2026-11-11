.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ecx
cmovns ecx, eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
or bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
cmovz ecx, edi
btr rdx, rdx
btc rax, rcx
or edx, 47
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 20
or sil, -8
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
or rbx, -124
cmovnl eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
bt ebx, eax
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
