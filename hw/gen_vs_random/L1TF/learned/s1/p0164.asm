.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
add al, 74
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 21
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 60
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
