.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdx + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 89
imul al
btr si, ax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
bt ax, 14
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
sub ecx, 30
test cl, -62
jb .bb_0.1
jmp .exit_0
.bb_0.1:
not ax
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
add bl, -95
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
add al, cl
cmovo ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
