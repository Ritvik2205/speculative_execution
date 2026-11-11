.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rbx + rcx + 67]
add cl, -33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
lea edi, qword ptr [rbx + rax]
add dl, 42 # instrumentation
lea esi, qword ptr [rdx + rsi]
lea ecx, qword ptr [rdx + rdi]
jmp .bb_0.1
.bb_0.1:
cmovbe rax, rdx
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 76
add dl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
test si, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
