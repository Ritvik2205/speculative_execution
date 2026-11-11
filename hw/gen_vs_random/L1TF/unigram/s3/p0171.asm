.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], 87
cmovl rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 11
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
add dl, -3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
cmovnz ebx, edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
add si, bx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
lea cx, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
