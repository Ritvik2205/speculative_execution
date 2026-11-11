.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and cl, 123 # instrumentation
cmovo bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
and dx, 60
btr rax, 56
cmovo rdi, rdi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
cmovo edx, eax
cmovnl cx, di
xor dl, -59
cmovnle rdi, rax
xor sil, 110
test bl, 65
or rdi, -11
cmovs si, bx
test sil, cl
and bl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
