.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, bx
xor bx, 16
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
or sil, -49
or cl, al
or cl, sil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
or al, bl
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
