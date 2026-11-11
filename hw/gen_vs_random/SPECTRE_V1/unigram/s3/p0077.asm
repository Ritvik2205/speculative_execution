.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
cmovnbe bx, dx
add cl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 4
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 58
lea di, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
add bl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
not rdx
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
lea edi, qword ptr [rdi + rdx]
cmp dil, al
lea ecx, qword ptr [rcx + rax + 46]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
