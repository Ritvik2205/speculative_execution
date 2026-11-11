.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and dl, -73
xor dl, dil
and rax, 627810357
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
test sil, cl
test al, dil
xor rax, -270810088
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
test eax, -675944960
or cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
