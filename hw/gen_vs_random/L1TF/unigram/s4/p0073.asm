.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, 83
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 87
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
or rdx, -98
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
lea rdi, qword ptr [rdi + rbx + 73]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
dec cl
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
