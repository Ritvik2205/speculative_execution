.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -56 # instrumentation
cmovl rdx, rsi
cmovz rbx, rcx
or rcx, 55
xor dil, dil
bts edi, eax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 76
bt rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
or esi, 74
and di, 46
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 39
jmp .bb_0.1
.bb_0.1:
and sil, 122 # instrumentation
cmovnb rsi, rdx
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 65
cmovnz dx, dx
bt edx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
