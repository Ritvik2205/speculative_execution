.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 24
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
xor dl, -19
or rdi, 21
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
xor rbx, 89
or al, cl
bt bx, si
and rax, 452940266
xor sil, -46
test rax, -1579405415
and ecx, -104
jmp .bb_0.1
.bb_0.1:
or rax, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
