.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 31
cmovnz di, di
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmovo rcx, rax
and cl, 127
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
bt rdx, rdx
xor dil, 44
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and bl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
cmovs rsi, rcx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and di, 17
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or al, -8
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
cmovl eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
