.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
adc dl, 107
lea rax, qword ptr [rdi]
sbb cl, cl
lea ax, qword ptr [rbx + rsi]
and ax, -22629
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
cmp bl, dl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
imul dx
adc eax, 56
lea cx, qword ptr [rdi + rbx + 48694]
and ax, 23118
lea rbx, qword ptr [rdi + rbx]
setno bl
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
jmp .bb_0.2
.bb_0.2:
add bl, -95 # instrumentation
lea bx, qword ptr [rdx + rdx + 34528]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
or rcx, rdx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add rax, 6
inc esi
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
