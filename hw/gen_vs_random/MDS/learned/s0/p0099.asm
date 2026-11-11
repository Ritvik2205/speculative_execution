.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test dl, -95
bt rdi, 36
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or bl, dl
cmovnb rdx, rbx
test rcx, -613256812
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
