.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, 16
cmovle di, bx
not cl
or cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
or al, bl
or al, 25
not dl
xor dl, dil
xor bl, 67
or al, -58
xor dl, cl
btr bx, di
test cl, al
and sil, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
