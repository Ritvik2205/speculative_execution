.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and al, -103
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test rsi, 64
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
test bl, -114
and cl, cl
not bl
jmp .bb_0.1
.bb_0.1:
or cl, al
xor rdi, -9
or cl, 119
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
btc eax, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
