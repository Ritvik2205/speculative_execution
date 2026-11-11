.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor cl, 15
xor al, cl
test cl, dl
and ecx, -104
or cl, bl
and dil, 125
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
or sil, -78
jmp .bb_0.1
.bb_0.1:
or rsi, 68
xor bl, dil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
bt ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
