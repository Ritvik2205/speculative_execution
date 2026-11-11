.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmp dil, dil
xor al, 77
bts eax, esi
cmovnb di, ax
btr rsi, 73
xor al, -119
jmp .bb_0.1
.bb_0.1:
inc sil
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovo rsi, rax
and si, bx
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 92
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 12
cmovbe bx, bx
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
sub dl, 6
cmovs dx, di
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
