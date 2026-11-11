.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
add al, 93
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
cmovnp di, si
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 16
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
btc di, si
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
add edi, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
