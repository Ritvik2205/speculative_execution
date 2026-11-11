.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 16
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
test ebx, esi
bt bx, cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and eax, edi
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 3
btr bx, 100
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
test bl, -14
and dx, 60
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and cl, 78 # instrumentation
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
