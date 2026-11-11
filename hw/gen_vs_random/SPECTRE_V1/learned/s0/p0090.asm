.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
btr di, 188
mov bl, cl
setns dl
cmovno edi, eax
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
add sil, dl
xor al, -41
cmp ax, 23607
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 19
cmovp edi, esi
or cl, 97
lea cx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
cmovnb rax, rax
imul rbx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 23
xor sil, 1
cmovo rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
