.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
test al, bl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
dec cl
or al, -5
sub dl, dil
or ax, 11821
sbb bl, dil
or al, cl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
