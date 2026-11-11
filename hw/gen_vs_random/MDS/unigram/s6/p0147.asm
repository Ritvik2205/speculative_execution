.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
or cx, -42
test ecx, -1843375753
cmovb di, si
btc rbx, rdx
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
and cl, -108 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
test dil, bl
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 86
cmovnbe ebx, eax
bt rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
cmovl edi, ebx
cmovnz rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
cmovns di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
