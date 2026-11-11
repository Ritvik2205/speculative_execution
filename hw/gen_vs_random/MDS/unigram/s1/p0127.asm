.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 71
bt ebx, edi
btc rdx, 138
and al, 102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
bts di, bx
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
cmovnl ecx, edi
xor dx, 80
or dil, cl
jmp .bb_0.1
.bb_0.1:
xor ebx, 68
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 60
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 15
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and cl, 95 # instrumentation
cmovns rdi, rdi
or dil, sil
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
