.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
cmp edi, ecx
lea ax, qword ptr [rdi + rdx + 42]
add bl, 126 # instrumentation
cmovnl dx, bx
cmp cl, dl
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
bts si, 47
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
or dl, cl
movzx esi, ax
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
add si, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
