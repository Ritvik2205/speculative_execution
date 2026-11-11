.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
xor sil, sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 92
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 29
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and dl, 107 # instrumentation
cmovs edx, eax
jmp .bb_0.1
.bb_0.1:
and cl, al
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
cmovnbe di, cx
cmovnbe si, cx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
cmovo si, cx
cmovnl ax, cx
xor di, -116
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
