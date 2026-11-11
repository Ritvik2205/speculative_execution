.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
add al, 10 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
add bl, -76 # instrumentation
cmovnle di, ax
lea cx, qword ptr [rax + rsi]
bt edi, eax
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, 124
add cl, -123 # instrumentation
cmovnp rax, rdx
and rsi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rsi]
movzx ebx, ax
mov rdx, 3609511260715352814
add dil, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
movzx esi, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
