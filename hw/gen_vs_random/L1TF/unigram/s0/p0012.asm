.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
mov rbx, -813004896564518775
adc ecx, 29
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
imul rsi, rcx, 87
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
add dl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
sub dx, 34
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
setnbe al
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
cmp dl, dil
bt rdi, rcx
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
