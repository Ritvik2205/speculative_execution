.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 31
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 54
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
or dil, -52
bt eax, 82
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 79
xor bx, ax
test cl, bl
cmovnle esi, edi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
