.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or eax, -1641258390
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and al, dil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and ax, 32540
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
