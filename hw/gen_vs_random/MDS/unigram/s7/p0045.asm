.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
and sil, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 81
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
xor rcx, -2
btr rax, rcx
cmovl rsi, rax
cmovz rdi, rcx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
bt ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
cmovnz esi, ebx
btr ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
