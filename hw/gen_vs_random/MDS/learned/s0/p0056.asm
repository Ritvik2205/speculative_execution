.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 359647041
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and bl, bl
jmp .bb_0.1
.bb_0.1:
or dil, dl
or ax, -6817
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
or cx, 39
test sil, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rax, 452940266
and al, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
