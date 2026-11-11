.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
cmp rax, -1877933118
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
and eax, 933895314
adc al, dl
not ecx
lea rcx, qword ptr [rbx + rcx + 45597]
not cx
add dx, -90
or rax, -3
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
xor rbx, rcx
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
cmovno rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmovo di, bx
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
