.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and bl, 68
xor al, 8
test al, dl
and cl, cl
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
or al, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
not al
not dl
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
or dl, -31
bts rcx, 19
test edx, -372470678
and al, dl
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
