.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -10161
sub dil, -70
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
cmp di, -78
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or bl, dl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
movzx edx, si
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
lea eax, qword ptr [rsi + rdi]
xchg dl, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
