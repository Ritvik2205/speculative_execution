.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
or al, dil
not al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor dl, cl
or bl, cl
xor eax, 2063216578
test dl, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and dl, -73
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and al, bl
test cx, 401
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
