.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
xor al, 55
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
and dl, -59 # instrumentation
cmovbe ax, si
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
xor ax, -16696
jmp .bb_0.1
.bb_0.1:
xor dl, -43
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 498847670
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
