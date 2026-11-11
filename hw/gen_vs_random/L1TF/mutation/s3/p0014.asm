.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmp bl, dl
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
add ax, -24961
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
xor rdx, rax
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
add cl, cl
or esi, edx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and si, bx
cmovz di, bx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
setl sil
cmp di, 45
mov si, 32553
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
