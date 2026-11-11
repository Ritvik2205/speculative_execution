.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -120
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 73
lea rax, qword ptr [rdx + rbx + 69]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add dl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 24
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
lea ebx, qword ptr [rax + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
setnp dl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
movsx dx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
