.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 55
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and ax, 339
jmp .bb_0.1
.bb_0.1:
test rdi, 19
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
jmp .bb_0.3
.bb_0.3:
and al, al
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
not sil
xor dil, 124
test rdx, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
