.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
dec rax
lea dx, qword ptr [rbx]
test cl, -49
cmp al, cl
sub rax, -132886581
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
lea eax, qword ptr [rsi + rdi + 31594]
sbb ax, -206
cmovnbe rax, rdi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
sbb rax, 1380680934
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
