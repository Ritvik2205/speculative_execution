.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
cmovnle cx, cx
add al, 117
sbb rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], -37
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
bts rcx, rcx
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
cmovb cx, bx
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
