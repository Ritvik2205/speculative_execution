.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
add cl, cl
cmovz di, bx
cmp di, 45
mov si, 32553
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
setl sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
and si, bx
xor rdx, rax
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
