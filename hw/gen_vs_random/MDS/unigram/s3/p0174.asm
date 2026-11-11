.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and cl, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
cmovnbe ecx, edx
test al, 22
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
cmovb rax, rbx
btc rsi, 105
cmovl ebx, edx
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor sil, al
xor ax, ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and bl, 68
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
xor dl, -43
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 53
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
