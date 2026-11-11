.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 89
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
add dl, 13 # instrumentation
setns dl
and sil, sil
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sbb esi, 93
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
lea ax, qword ptr [rbx + rdx + 32397]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
mov dl, dil
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
test si, 73
cmovnb rax, rbx
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
