.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
test al, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
test al, -32
jp .bb_0.1
jmp .exit_0
.bb_0.1:
not dl
test dil, -126
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
