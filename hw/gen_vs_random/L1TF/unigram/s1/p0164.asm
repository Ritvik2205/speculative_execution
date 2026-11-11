.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
setbe bl
and al, -68
sbb sil, al
add dil, -40 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
xor si, -50
jmp .bb_0.1
.bb_0.1:
sub sil, -99
setns dl
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
or di, 43
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
btr si, bx
test dl, dl
add cl, 107 # instrumentation
cmovnl ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
