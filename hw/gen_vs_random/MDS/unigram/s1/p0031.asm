.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 83
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or bl, 84
bt eax, eax
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 51
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 17
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and sil, -3 # instrumentation
cmovnb si, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
cmovle ecx, edx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
xor dl, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
xor rbx, rdi
bts edx, edi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
