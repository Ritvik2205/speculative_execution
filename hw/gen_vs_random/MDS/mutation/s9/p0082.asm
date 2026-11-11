.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
cmovnz ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and al, 75
xor ecx, ecx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
cmovnz rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and al, -38 # instrumentation
cmovnb si, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
or cl, 6
test rax, rbx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmovl rbx, rdi
test cl, dl
and dx, si
or rdx, -48
cmovnbe ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
