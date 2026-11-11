.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
or dl, 51
sub al, al
xor al, -19
and al, cl
or cl, dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and eax, 561041355
test rax, rsi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor cl, dil
xor cl, al
bt dx, ax
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
