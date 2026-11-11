.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, bl
and dil, -93
add dil, bl
setb al
xor al, -19
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 43
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
lea bx, qword ptr [rbx + rdx + 92]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
add al, dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, dl
sub dl, al
cmp bl, al
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
