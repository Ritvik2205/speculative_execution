.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
imul esi, edx, 9
setnz al
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
test al, sil
lea bx, qword ptr [rdx + rbx + 26600]
btr rbx, rdi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
sub ebx, 1
setbe al
xchg dx, ax
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
