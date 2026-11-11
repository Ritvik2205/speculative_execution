.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
test cl, bl
and dl, dl
xor al, dl
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 49
cmovnp cx, ax
cmovo ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
bt edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
or edx, -1
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
xor cl, dl
cmovz eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
