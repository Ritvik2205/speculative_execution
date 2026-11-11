.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
lea rbx, qword ptr [rdx]
add al, cl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and dl, -109
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rsi]
lea cx, qword ptr [rax]
add sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
