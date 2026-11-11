.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 62
and dl, -73
or al, cl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
not bl
jmp .bb_0.1
.bb_0.1:
xor ebx, 20
and ecx, -104
xor al, -19
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and al, cl
and ax, -16061
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
xor rdi, -9
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test sil, bl
or dl, dl
and al, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
