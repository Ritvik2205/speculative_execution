.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, dx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
test sil, 41
test al, -7
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
xor rdi, -9
or al, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 17
jmp .bb_0.2
.bb_0.2:
xor bl, cl
or rdi, 21
xor ax, -5889
and rsi, 27
bt ax, di
or al, -24
or dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
