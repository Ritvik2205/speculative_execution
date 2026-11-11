.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 13
bts rbx, rdx
or ax, -6817
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
xor al, 55
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
xor dil, -5
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
xor rdi, -9
or cl, 119
xor rax, -270810088
bt di, cx
cmovnz rcx, rbx
test dil, 46
and sil, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
