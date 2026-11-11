.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 52
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 41
dec cl
or di, 0b1000000000000000 # instrumentation
bsf bx, di
xor al, -74
add bl, -23 # instrumentation
setnle sil
inc dl
mov rdi, rbx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rbx + rcx + 39]
bt rdx, 27
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
