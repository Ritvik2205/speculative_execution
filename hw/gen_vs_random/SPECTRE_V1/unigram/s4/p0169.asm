.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
mov ecx, eax
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax], 92
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or di, 0b1000000000000000 # instrumentation
bsf di, di
imul edx, esi
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
imul esi
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
add al, al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
or rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
