.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
not ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
cmp cx, 88
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
mul sil
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
