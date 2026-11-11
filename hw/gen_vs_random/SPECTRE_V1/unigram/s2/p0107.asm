.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
test rbx, 87
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
add ax, 23362
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 3
cmp rax, 900122030
and rdx, -98
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
not edx
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
sbb sil, dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
