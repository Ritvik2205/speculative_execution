.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and di, si
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 67
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
cmovo rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bts rax, 149
btr dx, 64
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
test rcx, 33
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and al, 126
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and bl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
