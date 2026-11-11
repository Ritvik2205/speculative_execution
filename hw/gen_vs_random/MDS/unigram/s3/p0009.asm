.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
cmovs rcx, rax
and bx, dx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 83
bts edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
cmovnz si, di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 55
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
cmovnle ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt ecx, edx
cmovl rdx, rcx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
cmovnb si, cx
and cl, -63
and dil, dil
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
