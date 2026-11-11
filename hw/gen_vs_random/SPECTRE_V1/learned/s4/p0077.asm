.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
sbb cl, -122
setle cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdx, rdi
cmp al, al
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
dec al
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
sub ax, 10
dec bl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], bx
mov si, 9258
bt dx, 1
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
