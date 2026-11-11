.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 38
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 91
test bl, -8
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
xor cl, al
or al, 100
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
lea si, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
