.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
or bl, bl
and cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
or al, 25
and bl, bl
test cl, -86
and al, dil
xor dx, 22
or cl, dil
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
or bl, cl
or rax, -1523798580
and cl, -6
and cl, 79
xor bl, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
