.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and dl, 84 # instrumentation
cmovl rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and bl, -5 # instrumentation
cmovnl si, bx
test esi, 1857129931
and dil, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
jmp .bb_0.1
.bb_0.1:
bt ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
and cl, -23 # instrumentation
cmovno ecx, edx
cmovnz ecx, esi
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
