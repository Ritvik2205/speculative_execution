.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add al, bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp dil, dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and bl, 89
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
