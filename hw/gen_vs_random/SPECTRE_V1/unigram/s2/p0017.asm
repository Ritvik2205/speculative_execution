.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, bx
test dx, 29
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
sub sil, sil
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rax
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 15
sbb cl, 105
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
xchg sil, sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
setnle dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
