.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, esi
cmovl ecx, eax
or rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
test sil, -55
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and al, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rax, rdi
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and cl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
btr ecx, esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
