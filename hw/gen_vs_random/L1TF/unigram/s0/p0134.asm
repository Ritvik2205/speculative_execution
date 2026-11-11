.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
lea rsi, qword ptr [rcx + rsi]
add dl, dl
imul rdx, rdx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
test dl, -37
bt edi, edx
xor cl, 89
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
lea edx, qword ptr [rcx + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
