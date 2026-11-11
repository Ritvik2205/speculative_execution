.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi + rsi + 81]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 76
btr rsi, 37
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 94
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
add esi, 16
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
cmp eax, 30
add dl, 63 # instrumentation
cmovle ax, cx
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
