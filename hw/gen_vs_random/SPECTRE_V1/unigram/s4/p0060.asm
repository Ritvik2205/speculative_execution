.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 20
lea edi, qword ptr [rbx]
xor cx, 40
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 13
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
xchg al, dl
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
test esi, 84
bt eax, 78
xor al, -74
bt esi, 34
cmovz eax, ebx
and rdx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
