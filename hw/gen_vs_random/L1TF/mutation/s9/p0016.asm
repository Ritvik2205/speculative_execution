.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
mov si, 32553
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
setl sil
mov al, cl
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
cmp di, -78
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
or esi, edx
cmovz di, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
xor rdx, rax
add cl, cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
and si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
