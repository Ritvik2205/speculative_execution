.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and cl, cl
or al, -61
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
cmovno dx, ax
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
btr ecx, edx
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and al, -26 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and cl, 38 # instrumentation
cmovbe ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and bl, 45 # instrumentation
cmovnb si, dx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 67
cmovbe esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
