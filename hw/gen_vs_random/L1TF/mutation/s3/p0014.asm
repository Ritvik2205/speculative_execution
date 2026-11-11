.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
and si, bx
cmp di, 45
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
setl sil
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
mov si, 32553
xor rdx, rax
or esi, edx
add cl, cl
cmovz di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
