.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
cmovbe di, ax
not ebx
test sil, bl
or bl, bl
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
cmovnb si, si
bts rdx, 255
cmovo rdi, rbx
and dx, 98
bts rcx, 115
xor esi, esi
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and cl, 95 # instrumentation
cmovns rbx, rbx
bt rax, rdi
cmovnl rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
