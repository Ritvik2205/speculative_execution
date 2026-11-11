.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 64
test dil, -126
sbb ax, -14164
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
add dil, dl
jmp .bb_0.1
.bb_0.1:
xor al, bl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and al, -68
lea dx, qword ptr [rbx + rdi + 61]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
sub al, 9
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
