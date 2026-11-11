.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 97
cmovno eax, edx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmovz si, ax
xor ax, dx
xor dil, dil
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 22
jmp .bb_0.1
.bb_0.1:
and ebx, 63
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
btr rdx, 194
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 33
xor dl, sil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and al, 126
and rsi, 70
cmovo rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
