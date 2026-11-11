.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, ax
and sil, dil
test al, -7
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
xor cl, 98
bts rbx, rdx
jmp .bb_0.1
.bb_0.1:
xor cl, -13
bt eax, edx
test si, 45
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or al, 54
or cl, 6
test al, -7
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or ax, -7150
not dl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
