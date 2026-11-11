.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, 115
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
test cl, 0
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
test dil, -80
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and al, cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
or dx, 125
xor rax, -1499464454
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
