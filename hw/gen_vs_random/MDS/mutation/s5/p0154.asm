.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and dx, si
xor ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and al, -38 # instrumentation
cmovnb si, si
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test cl, dl
and al, 14
cmovnz rbx, rsi
or rdx, -109
or cl, 30
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
cmovnz ebx, ecx
cmovnbe ecx, edx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
cmovl rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
