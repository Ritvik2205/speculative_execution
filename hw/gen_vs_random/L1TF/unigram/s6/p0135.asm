.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 46
bt bx, dx
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 78
lea ebx, qword ptr [rdi + rbx + 24078]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
lea rax, qword ptr [rdx + rax + 57242]
add cl, 40 # instrumentation
cmovbe ax, si
xor rax, 20
mul edi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 77
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 62
and dx, 2
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
add bl, 113 # instrumentation
setbe al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
