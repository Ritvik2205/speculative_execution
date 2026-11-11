.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt bx, 70
cmovo si, si
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 80
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
or ecx, 22
xor cl, -79
xor dx, cx
and cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 7
bt rdi, rcx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and dl, -1 # instrumentation
cmovnb di, cx
and bl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 85
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
