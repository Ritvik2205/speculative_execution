.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
xor rax, -1128378406
bt si, di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
or dl, 51
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and dl, cl
test eax, 1729060510
xor bl, -88
xor al, dl
jmp .bb_0.1
.bb_0.1:
test edx, -372470678
xor cl, 98
jmp .bb_0.2
.bb_0.2:
test bl, -114
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
