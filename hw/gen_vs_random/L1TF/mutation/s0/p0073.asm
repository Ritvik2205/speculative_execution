.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
sub esi, 17
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
xchg esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 46
xchg esi, ecx
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
cmp di, 45
mov si, 32553
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
