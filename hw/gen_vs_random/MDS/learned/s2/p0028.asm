.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
xor al, 99
and eax, 943733866
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test bl, -14
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 26
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
btr rax, 56
test al, 127
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
