.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, -11
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 14
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
lea edi, qword ptr [rsi + rcx]
jmp .bb_0.1
.bb_0.1:
test rbx, 73
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
lea eax, qword ptr [rdx + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 25
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
