.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rax
add cl, -26 # instrumentation
cmovnp ax, dx
lea dx, qword ptr [rbx]
lea eax, qword ptr [rsi + rdi + 31594]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmovnbe rax, rdi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
sbb ax, -206
test cl, -49
sub rax, -679751639
cmp al, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
sbb rax, -148104813
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
