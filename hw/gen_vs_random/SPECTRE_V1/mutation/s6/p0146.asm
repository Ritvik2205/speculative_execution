.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -93
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
cmovbe cx, di
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
xor al, bl
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
add cl, -56 # instrumentation
sbb rdx, -67
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
sbb rax, 786640702
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
