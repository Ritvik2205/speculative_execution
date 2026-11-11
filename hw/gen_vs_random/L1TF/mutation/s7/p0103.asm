.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
lea eax, qword ptr [rsi + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
or ax, 11821
cmp di, -78
xchg dl, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
movzx edx, si
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
sub dil, -70
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
