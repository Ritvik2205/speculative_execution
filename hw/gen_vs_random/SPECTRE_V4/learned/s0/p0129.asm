.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 28666
mul ax
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
cmovnz dx, bx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 33
nop
cmovs dx, bx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
or dl, 88
xor al, cl
cmovbe bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
