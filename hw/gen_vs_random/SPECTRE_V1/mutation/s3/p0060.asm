.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
setb cl
and dl, sil
mov dl, bl
test cl, -62
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx + rcx + 43552]
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
xchg dl, al
lea rsi, qword ptr [rdx + rdi + 19302]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
