.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
mov sil, dil
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
lea dx, qword ptr [rdx + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 81
movzx esi, bx
add cl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
bswap rbx
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and ecx, -38
btc eax, 39
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx], 77
lea rbx, qword ptr [rbx + rsi]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
