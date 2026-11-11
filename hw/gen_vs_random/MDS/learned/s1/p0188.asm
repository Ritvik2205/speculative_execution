.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
btc cx, 115
xor cl, bl
test bl, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or al, -24
or al, 30
and dil, -62
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
