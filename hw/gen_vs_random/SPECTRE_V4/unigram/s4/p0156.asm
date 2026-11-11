.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
or rax, rsi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
test di, 25
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 46
add bl, -72
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
btc rdx, 23
bt edx, ebx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 55
xor rbx, 7
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
bt ebx, eax
btc rdx, 98
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], dx
and dl, 30
sbb dil, 48
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and ax, 35
adc dil, 21
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
add bl, dil
xchg rdi, rdx
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
xor cl, -85
cmovle bx, si
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 6
xchg rax, rdx
test dil, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 62
sub al, cl
movzx dx, dl
adc sil, bl
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 62
and sil, cl
xor ax, 28088
or si, 0b1000000000000000 # instrumentation
bsf si, si
adc al, cl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
cmovle ax, di
and bl, 26
cmovz eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
