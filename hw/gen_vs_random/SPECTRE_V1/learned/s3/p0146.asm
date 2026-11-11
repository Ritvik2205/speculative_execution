.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
neg rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
bswap rdx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
bt eax, edi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
imul rsi, rax
and si, cx
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
or sil, 3
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
