.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovnb si, si
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovl rbx, rdi
or cl, 6
test rax, rbx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and dx, si
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
xor ecx, ecx
and al, 84
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
cmovnz rbx, rsi
test cl, dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
cmovnbe ecx, edx
or rdx, -109
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
cmovnz ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
