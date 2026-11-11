.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovnb si, si
cmovnz rbx, rsi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
xor ecx, ecx
cmovnbe ecx, edx
test cl, dl
test rax, rbx
cmovnz ebx, ecx
and dx, si
or cl, -77
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or rdx, -109
and al, -54
cmovl rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
