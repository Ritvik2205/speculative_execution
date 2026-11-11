.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
or rdx, -109
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and al, -8
or cl, 7
test cl, dl
test rax, rbx
and al, -38 # instrumentation
cmovnb si, si
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
cmovnz rbx, rsi
cmovl rbx, rdi
xor ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
cmovnbe ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
