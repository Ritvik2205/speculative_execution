.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
test cl, 75
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovb ax, ax
or al, -48
and sil, -94
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rcx
and cl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
btr rsi, 73
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 13
or sil, al
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
