.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
test ebx, ebx
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
cmp ebx, 94
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
xor cl, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
add bl, -113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
lea cx, qword ptr [rax + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 49
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
