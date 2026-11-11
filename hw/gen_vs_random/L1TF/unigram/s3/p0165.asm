.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
add cl, 65 # instrumentation
cmovo rcx, rax
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
lea esi, qword ptr [rax + rdx + 19]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 20
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
