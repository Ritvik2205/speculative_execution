.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test rax, rbx
test cl, dl
cmovnz rbx, rsi
or rdx, -48
and al, 14
cmovnbe ecx, edx
and dx, si
cmovl rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor ecx, ecx
and al, -38 # instrumentation
cmovnb si, si
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
or cl, -77
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
cmovnz ebx, ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
