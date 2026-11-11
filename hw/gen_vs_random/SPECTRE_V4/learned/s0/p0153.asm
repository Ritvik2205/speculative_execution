.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2030845821
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
or bl, dl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
sub ax, si
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
btc rax, rsi
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
imul dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
test cl, cl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
btc rbx, rcx
add bl, -18 # instrumentation
mov rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
xor bl, dl
movzx eax, sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
cmovnbe edi, edx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
btc rdi, 167
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
imul esi, edx
imul rcx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
add al, 118
cmp rax, -1102558854
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
