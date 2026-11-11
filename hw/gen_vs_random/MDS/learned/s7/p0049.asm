.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
xor dil, 124
and al, cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rsi, 98
test dil, 46
jmp .bb_0.1
.bb_0.1:
or sil, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor rdi, -9
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
xor rax, -270810088
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
