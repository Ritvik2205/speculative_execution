.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, cl
lea eax, qword ptr [rsi + rdi + 31594]
sub rax, 1451608022
cmovnbe rax, rdi
lea dx, qword ptr [rbx]
add cl, -26 # instrumentation
cmovnp ax, dx
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
sbb ax, -206
dec rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
test cl, -31
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
sbb rax, 1380680934
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
