.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
or al, 54
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor dl, 40
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and edi, 23
and ax, 13090
btc dx, bx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rax, -731384280
xor al, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
