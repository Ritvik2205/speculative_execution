.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or rdi, 21
btr ax, cx
and dl, -73
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
bt cx, si
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
test al, -7
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rax, 452940266
test rdx, 100
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
