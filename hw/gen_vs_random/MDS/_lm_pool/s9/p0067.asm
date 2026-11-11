.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and dil, cl
and cx, -8
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
or cl, 39
test dil, -51
or sil, al
btr ax, si
xor al, 9
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or ax, -7150
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
