.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor al, dil
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and dil, -39
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test rax, -1579405415
or cl, dil
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
