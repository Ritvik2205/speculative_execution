.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 82
or al, -57
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
lea cx, qword ptr [rdx + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
xor rcx, rax
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 17
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
cmovnp ebx, eax
cmovl ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
