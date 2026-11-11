.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
test bl, -14
and dil, 125
and ax, -4410
and al, -55
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor al, 115
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or al, dl
and sil, 74
xor ax, -6793
test dil, cl
test rcx, -613256812
xor al, 122
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
