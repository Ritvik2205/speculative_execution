.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
sbb rax, rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 55
add dl, -1
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rbx
cmovns rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovnp dx, bx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
imul rdx, rcx, 25
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
