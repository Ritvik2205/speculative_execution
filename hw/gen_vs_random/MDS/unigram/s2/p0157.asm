.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, 70
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
test cl, dil
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
or dl, al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and bl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
and dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and cl, dil
or bx, 53
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 70
cmovz ecx, edi
cmovnz di, bx
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
