.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
add sil, -61
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test eax, 645518295
xor bl, cl
or sil, -44
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
test al, -104
cmovbe ebx, ecx
or dl, bl
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
