.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, bl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 88
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and cx, 98
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
add dl, al
setno bl
bswap rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
