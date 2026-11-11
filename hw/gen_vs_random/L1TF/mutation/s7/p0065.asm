.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
sub dl, 105
setz bl
xchg esi, eax
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
cmovnbe edx, edi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
bswap rax
cwde
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
