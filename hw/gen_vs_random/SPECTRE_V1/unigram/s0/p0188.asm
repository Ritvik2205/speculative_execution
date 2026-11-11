.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
add bl, -15 # instrumentation
movzx ax, dl
cmovnb esi, eax
xor cl, cl
add al, -65
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
nop
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub ecx, edx
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
dec al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 97
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
