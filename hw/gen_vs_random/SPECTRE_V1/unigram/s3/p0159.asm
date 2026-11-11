.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
add cl, 113 # instrumentation
setnb cl
cmovnbe rbx, rax
sub dl, bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 103 # instrumentation
cmovno eax, edx
add dl, -108 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
cmovnp cx, dx
add cl, -101 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and di, 45
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
lea dx, qword ptr [rdi + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 22
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
