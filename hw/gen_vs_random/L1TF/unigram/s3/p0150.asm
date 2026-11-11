.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
imul ax, bx, 3
setl dil
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
add dl, -121 # instrumentation
cmovnp eax, ebx
btc di, 237
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
sub esi, 62
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
cmovno ax, ax
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rcx]
cmovnz eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
