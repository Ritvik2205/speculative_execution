.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -78
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
lea dx, qword ptr [rdx]
xor al, al
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], di
btr edx, 7
inc ecx
sets cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
lea edi, qword ptr [rax]
add al, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
cmovnbe ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
