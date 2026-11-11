.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
add cl, 108 # instrumentation
setl cl
lea rdi, qword ptr [rdi + rcx]
cmovz rdx, rcx
mov bl, 35
sub dil, -39
or al, dl
xchg si, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
add al, -102
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
sbb bl, cl
and bl, dl
sub dl, al
jmp .bb_0.2
.bb_0.2:
and di, si
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and dl, 59
cmovno di, ax
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
add ax, 32140
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
