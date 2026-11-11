.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
and dil, dil
or bl, dl
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor bl, cl
jmp .bb_0.2
.bb_0.2:
test dil, -80
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or rax, -1561934807
or al, 54
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
