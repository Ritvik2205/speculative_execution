.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
cmp dil, bl
bt rsi, rsi
xor al, 89
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and al, al
add esi, -17
sub di, 19
and rcx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
