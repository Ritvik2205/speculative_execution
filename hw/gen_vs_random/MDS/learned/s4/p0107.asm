.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
xor ax, -5889
and sil, sil
and dl, cl
and al, dl
jmp .bb_0.1
.bb_0.1:
or cl, -36
or dl, -8
test rbx, 28
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
