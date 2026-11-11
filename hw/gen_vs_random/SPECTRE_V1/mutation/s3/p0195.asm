.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
mov dl, bl
setb cl
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
and rdx, rsi
test cl, -24
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dl, al
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
lea ax, qword ptr [rdx + rcx + 43552]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
lea rsi, qword ptr [rdx + rdi + 19302]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
