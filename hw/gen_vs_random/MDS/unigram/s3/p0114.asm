.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz si, dx
cmovnbe edi, eax
test cl, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and al, cl
xor rdx, -59
or sil, sil
cmovbe ax, dx
test dil, -80
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and bl, 127 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdx], dx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
cmovo bx, di
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 57
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
