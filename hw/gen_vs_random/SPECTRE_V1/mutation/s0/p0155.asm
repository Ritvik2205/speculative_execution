.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
test cl, -49
cmovnbe rax, rdi
cmp al, cl
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
sub rax, -132886581
sbb ax, -206
lea eax, qword ptr [rsi + rdi + 31594]
lea dx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
dec rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
sbb rax, -148104813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
