.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
sub dil, 87
xchg dl, dl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
cmp di, -78
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
or ax, -18131
or bl, dl
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
lea eax, qword ptr [rsi + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
