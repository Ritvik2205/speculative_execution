.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
test di, ax
sub dil, -70
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 74
or bl, 114
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
mov dl, bl
sub al, dil
or dx, 1 # instrumentation
dec rbx
seto al
lea rbx, qword ptr [rdx + rcx]
and rsi, 51
add dl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
cmovo cx, di
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
