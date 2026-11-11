.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 82
and dl, -7
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
or cl, sil
test bl, dil
xor sil, 75
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
and di, bx
cmovnl ecx, edx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
cmovnz bx, dx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 72
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
