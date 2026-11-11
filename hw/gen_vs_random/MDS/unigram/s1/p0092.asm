.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rax, rdi
and dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 1
bts bx, si
test cx, bx
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and cl, 7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
xor cl, 98
bts edx, 189
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovnle ax, cx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
and ecx, -104
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
test di, 9
btr edi, 221
and dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
