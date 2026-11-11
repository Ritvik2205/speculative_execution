.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rsi + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or ax, 11821
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xchg dl, dl
sub dil, -39
movzx edx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
cmp di, -78
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
or bl, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
cmovbe cx, dx
movzx ax, dl
xor dl, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
sub al, al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
