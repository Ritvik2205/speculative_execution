.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 36 # instrumentation
lea edi, qword ptr [rdi + rdx + 13440]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -58
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 105
cmovnz ebx, esi
cmp rax, 834498504
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
movzx edx, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
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
cmp di, -78
mov si, 32553
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
