.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and ax, -4410
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rcx, -63
xor bl, -61
jmp .bb_0.3
.bb_0.3:
xor rsi, -117
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rdi, 2
or si, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
