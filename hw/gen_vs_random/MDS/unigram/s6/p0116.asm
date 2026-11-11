.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
bt ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
or al, 54
and dl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
cmovp bx, bx
or rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
cmovbe ebx, ebx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
