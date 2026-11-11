.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
cmovnl rcx, rdx
add al, -117 # instrumentation
not rbx
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
xchg cl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
imul rbx, rsi, 69
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
setb sil
mov rdx, 3189408690989687296
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
