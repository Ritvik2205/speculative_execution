.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, si
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or cl, 30
cmovnbe ecx, edx
xor ecx, ecx
cmovl rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and al, -38 # instrumentation
cmovnb si, si
bts bx, 3
and dl, 1 # instrumentation
cmovl ax, si
xor ax, -5889
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and eax, 366961170
test rax, rdx
cmovbe di, ax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or edi, -88
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
