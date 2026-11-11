.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
btr dx, ax
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and si, -121
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
test bl, -14
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
