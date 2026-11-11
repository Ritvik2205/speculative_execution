.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
test ebx, -2015966884
cmovz rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
btr ax, ax
cmovns ebx, ecx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
cmovnz cx, ax
cmovz ebx, edi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
cmovbe edi, esi
cmovnbe rax, rax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and dil, -62
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and al, -3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
