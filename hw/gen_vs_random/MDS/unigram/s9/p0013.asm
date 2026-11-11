.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
btr edx, edi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 17
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
or al, -61
test cx, 401
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
bts ecx, 3
xor sil, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
not rbx
and al, 35
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
xor cl, cl
cmovo rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and cl, 118 # instrumentation
cmovp ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
