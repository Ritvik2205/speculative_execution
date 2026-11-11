.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul sil
imul ax, si, 45
xchg rcx, rdi
imul cx, di, -104
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
sub bl, dil
setb al
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 30
jmp .bb_0.1
.bb_0.1:
add sil, 6 # instrumentation
cmovl ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 89
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
add al, -1 # instrumentation
nop
sub edx, -33
and rbx, rcx
add dil, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
