.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
xor dil, dl
and edx, 1
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
cmp bl, 123
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
