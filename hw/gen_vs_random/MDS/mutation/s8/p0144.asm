.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and dx, si
cmovnz ebx, ecx
cmovl rbx, rdi
xor ecx, ecx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmovnz rbx, rsi
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
cmovnbe ecx, edx
or rdx, -109
or cl, 7
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and al, 82
test cl, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and al, -38 # instrumentation
cmovnb si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
