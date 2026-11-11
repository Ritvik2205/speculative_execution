.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
not dx
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
cmp dl, dl
lea rdx, qword ptr [rbx]
setno dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
sbb rdi, 41
lea rcx, qword ptr [rsi + rax]
sbb rsi, rcx
cwde
btr eax, 231
sub di, 44
add cl, -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
