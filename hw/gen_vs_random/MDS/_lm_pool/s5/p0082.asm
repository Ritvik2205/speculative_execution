.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and dx, 60
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and cl, dil
or al, 30
test rcx, -613256812
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
xor eax, 984871847
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
test cl, 73
and sil, dl
bt cx, dx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
