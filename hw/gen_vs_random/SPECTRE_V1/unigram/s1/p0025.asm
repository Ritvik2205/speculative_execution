.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe al
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
or dx, 8
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
xor rax, 376589024
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 40
and si, 71
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
add cx, -103
sub rax, -1628299544
add dl, 47
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor rbx, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
