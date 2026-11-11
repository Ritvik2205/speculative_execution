.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and dl, dl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and al, dl
or dil, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test al, dl
or ax, -14271
xor dil, cl
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
