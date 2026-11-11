.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and bx, 60
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
xor dil, 124
jmp .bb_0.1
.bb_0.1:
xor dil, bl
test dl, al
mov al, cl
and dl, dil
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test bl, -114
test bl, -9
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
