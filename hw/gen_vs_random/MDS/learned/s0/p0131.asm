.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or al, -78
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
jmp .bb_0.1
.bb_0.1:
or ax, 127
or rax, 52
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or al, dl
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
