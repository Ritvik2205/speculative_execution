.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 401
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 3
btr rax, 29
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and cl, 112 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
btr edi, edx
test ebx, -961564216
btr ebx, ecx
or ax, -7150
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
