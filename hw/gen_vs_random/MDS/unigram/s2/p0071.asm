.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
bts dx, 50
cmovnz eax, ecx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
cmovp ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
cmovno cx, si
cmovl rbx, rbx
test ebx, ecx
bts rdx, rax
test sil, 41
xor sil, -14
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
