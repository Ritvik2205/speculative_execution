.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
or al, -24
or bl, bl
xor al, 9
test sil, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and al, cl
jmp .bb_0.3
.bb_0.3:
or cl, dl
and ax, 5001
and rax, -636362975
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
