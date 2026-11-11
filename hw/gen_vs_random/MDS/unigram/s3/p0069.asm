.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
btc bx, cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and sil, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and dl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 47
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and dil, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 68
bt edx, edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
btc eax, 40
test edx, -372470678
cmovnb rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
