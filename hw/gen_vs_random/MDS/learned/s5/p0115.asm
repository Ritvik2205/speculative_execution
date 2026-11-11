.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
bt eax, ecx
jmp .bb_0.1
.bb_0.1:
test rdi, 57
and bl, bl
and rbx, rdi
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
bt ax, cx
and al, sil
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
xor al, 9
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
xor dil, -70
bt dx, ax
bt bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
