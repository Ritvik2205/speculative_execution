.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
xor ecx, ecx
and dx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and al, -103
cmovnbe ecx, edx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
test rax, rbx
or rdx, -109
and al, -38 # instrumentation
cmovnb si, si
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
or cl, 7
cmovl rbx, rdi
cmovnz rbx, rsi
cmovnz ebx, ecx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
