.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 54
test sil, 41
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor rax, -404206377
and dil, 125
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
test sil, 17
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, -7
or al, -61
or al, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
and al, 84
or cl, 7
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
