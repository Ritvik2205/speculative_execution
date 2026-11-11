.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and al, cl
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
xor bl, 67
or al, -17
and dl, bl
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and dil, cl
or al, 16
or rcx, 54
bt ecx, eax
and si, -121
jmp .bb_0.1
.bb_0.1:
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
