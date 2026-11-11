.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 35
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rax, -2058103810
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
xor al, -4
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.1
.bb_0.1:
test cl, 0
btr ax, dx
or bl, -54
and cl, al
or dil, -76
xor bl, 67
bt ax, cx
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
