.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
cmovnbe ecx, edx
and dx, si
cmovnz rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
cmovnz ebx, ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
or cl, 119
xor ecx, ecx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
test rax, rbx
or rdx, -48
cmovl rbx, rdi
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
test cl, dl
and al, -38 # instrumentation
cmovnb si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
