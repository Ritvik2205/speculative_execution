.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], di
btr edx, 7
inc ecx
sets cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
lea edi, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
add al, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
cmovnbe ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
add dl, 109 # instrumentation
cmovnb rax, rsi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
