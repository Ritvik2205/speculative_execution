.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 74
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 80
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 38
xor cx, 113
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
or al, -2
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
