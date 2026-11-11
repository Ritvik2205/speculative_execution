.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 55
or di, 58
jmp .bb_0.1
.bb_0.1:
xor bl, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
test cl, -123
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
jmp .bb_0.3
.bb_0.3:
or dl, 85
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
