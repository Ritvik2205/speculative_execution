.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rdx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
xor bl, sil
cmovns eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
cmovnl esi, edx
cmp al, cl
lea rbx, qword ptr [rbx + rdx + 49]
not si
and rdx, 66
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
inc al
lea di, qword ptr [rax]
cmp dx, bx
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
