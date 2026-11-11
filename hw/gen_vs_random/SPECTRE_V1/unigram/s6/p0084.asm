.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
add cl, -127
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
movzx rax, di
mul sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
xor cl, -91
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
cmp bl, bl
mul sil
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
mul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
