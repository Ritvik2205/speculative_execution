.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovnb si, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and al, 49
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnz rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or cl, 6
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
cmovl rbx, rdi
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor ecx, ecx
or rdx, -48
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
test cl, dl
cmovnbe ecx, edx
cmovnz ebx, ecx
and dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
