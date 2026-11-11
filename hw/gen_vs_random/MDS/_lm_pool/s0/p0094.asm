.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
or sil, -78
or dl, cl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
xor ebx, 2
and dl, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
xor al, dl
and ax, 339
test sil, bl
xor cl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
test cl, 62
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
