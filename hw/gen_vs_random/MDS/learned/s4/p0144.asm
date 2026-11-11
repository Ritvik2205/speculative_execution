.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
or cl, 7
or al, dil
or dil, al
xor cx, -18
xor sil, bl
or edx, -1
and sil, -69
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
xor rdi, -9
or ax, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
