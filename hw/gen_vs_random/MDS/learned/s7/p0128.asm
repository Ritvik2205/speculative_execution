.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -19
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or dl, dl
and sil, -56
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
bt ax, cx
and cx, -8
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
test sil, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test dil, sil
or al, dil
xor dl, 40
test dl, 27
and sil, bl
test bl, -114
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
