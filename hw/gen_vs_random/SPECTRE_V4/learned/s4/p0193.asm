.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
cmovnbe dx, ax
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, dl
or cl, dil
movzx ax, al
cmovl rcx, rdi
test al, 80
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
add bl, cl
movzx rax, dil
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 41
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 63
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rbx, 69
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
or dl, dl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
cmovns ecx, esi
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
