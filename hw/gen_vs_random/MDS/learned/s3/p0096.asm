.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 51
or al, -17
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and ax, 27170
test eax, 1287331633
and si, -121
or ax, 16560
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
xor cl, dl
and al, 87
xor al, -89
test rax, -1579405415
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
