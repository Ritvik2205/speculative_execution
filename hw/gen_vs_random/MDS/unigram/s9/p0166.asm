.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, eax
and al, -26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and cl, -71
bts dx, di
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 65
cmovbe esi, eax
or cl, al
or al, -78
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
cmovl rdi, rdi
and dil, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
or bx, ax
xor dx, 55
xor bx, 80
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
cmovnbe cx, ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 11
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
