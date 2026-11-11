.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edi
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or rax, 1020005579
or al, 54
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
test al, 22
and si, -121
or dl, dl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
or al, -61
xor bl, cl
xor al, -4
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
