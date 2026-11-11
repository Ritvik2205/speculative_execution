.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
bt rsi, rsi
and dl, cl
cmovp rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
btr edi, eax
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
jmp .bb_0.1
.bb_0.1:
and dl, 122 # instrumentation
cmovnbe edx, esi
xor al, -119
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
or cl, dl
test sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor ax, 24729
and dl, bl
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
and di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
