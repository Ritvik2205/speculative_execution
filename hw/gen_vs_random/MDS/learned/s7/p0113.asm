.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
test bl, dil
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
btr dx, bx
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
test al, -81
and cx, -8
and eax, 461212071
or dil, -78
and ebx, 76
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rax, 627810357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
