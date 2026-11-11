.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno cx, si
cmovz eax, esi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rbx
or rcx, 100
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
sub al, bl
adc bl, -73
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 22
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
imul edi
or cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
