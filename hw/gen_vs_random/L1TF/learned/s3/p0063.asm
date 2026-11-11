.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
add bl, -93
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
btr ecx, ebx
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and eax, ebx
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 97
bt edi, 230
add rax, rbx
add dil, 63
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 68
imul cx, di, 19
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
xor dl, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
