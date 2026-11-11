.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or sil, bl
xor al, cl
and sil, -9
or al, -78
xor sil, -126
or rcx, -17
and ax, 339
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and dx, 60
or al, 24
bt dx, 162
or dl, -97
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rax, -2039117613
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
