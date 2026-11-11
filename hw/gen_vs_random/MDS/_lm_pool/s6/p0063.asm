.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or cl, 119
test eax, 343548072
test rcx, -613256812
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or cl, 30
test dl, sil
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
or sil, -78
and al, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
