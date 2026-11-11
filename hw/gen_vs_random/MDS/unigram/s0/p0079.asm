.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 39
btr cx, cx
test bl, -114
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
test rcx, -613256812
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and ecx, -104
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and al, 67 # instrumentation
cmovl rdx, rax
and al, 39 # instrumentation
cmovbe dx, ax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, rbx
cmovns bx, ax
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
