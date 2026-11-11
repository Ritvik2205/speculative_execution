.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 19224
xor rdi, -9
or rax, -1523798580
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor bx, 90
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
xor cl, -13
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
test dil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and al, 84
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
