.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
add cl, cl
mov si, 32553
xor rdx, rax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and si, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
cmp di, -78
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
or esi, edx
mov al, cl
setl sil
cmovz di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
