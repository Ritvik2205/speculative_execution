.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
inc dl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
add dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
cmovnbe rdx, rsi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
add bl, 39 # instrumentation
cmovo edi, eax
test dl, 113
btr bx, 144
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
