.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -4635
test eax, 758789512
xor bl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts dx, 167
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
movzx rax, sil
and cl, dl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
btc bx, 179
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
bt rax, rcx
not eax
adc al, 88
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
cmovz si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
