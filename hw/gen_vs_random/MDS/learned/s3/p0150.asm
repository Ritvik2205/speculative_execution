.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and edx, -44
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test dil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or dl, bl
jmp .bb_0.2
.bb_0.2:
or al, -75
and al, -55
and rbx, 65
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
