.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
or cl, 119
xor cl, 55
or dl, 51
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
or al, bl
or dl, -8
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test sil, 41
and bl, dl
and sil, dl
or al, 74
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
