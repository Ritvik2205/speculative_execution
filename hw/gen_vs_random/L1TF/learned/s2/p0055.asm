.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 85
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
add cl, -20
and al, -68
and dl, bl
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rax + rdx + 25]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
xchg esi, ecx
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
