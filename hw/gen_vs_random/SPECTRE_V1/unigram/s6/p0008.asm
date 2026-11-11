.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, dil
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
bt cx, cx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
bswap rsi
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
btr ecx, eax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
sbb dl, al
sbb ax, -17107
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
