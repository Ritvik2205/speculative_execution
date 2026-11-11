.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -32
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
adc bl, al
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
dec dx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
adc bl, 88
mul dl
seto dl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
movsx dx, al
adc dl, 107
jmp .bb_0.2
.bb_0.2:
imul dx
adc eax, 1725322202
lea cx, qword ptr [rdi + rbx + 48694]
and ax, 23118
lea rbx, qword ptr [rdi + rbx]
setno bl
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
