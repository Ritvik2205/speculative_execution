.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 57
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 5
cmovb ecx, ecx
add al, 112 # instrumentation
setl al
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 79
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
add sil, dil
add sil, 40 # instrumentation
lea si, qword ptr [rax + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 12
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and bl, -73
cmp dil, dil
btc bx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
