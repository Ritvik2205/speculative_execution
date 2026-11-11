.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
cmp rdi, 28
and al, dl
xor al, 45
add al, -80
test ebx, 66
or sil, bl
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
xchg edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
