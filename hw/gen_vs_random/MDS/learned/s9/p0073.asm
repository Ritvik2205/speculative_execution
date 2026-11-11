.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
test dil, -80
xor dl, 34
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rax, 452940266
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
xor rbx, 89
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.2
.bb_0.2:
or al, 74
and bx, 95
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
