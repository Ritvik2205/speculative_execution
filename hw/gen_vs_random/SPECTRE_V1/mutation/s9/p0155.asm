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
and dl, sil
and rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
mov dl, bl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
test cl, -33
setb cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rsi, qword ptr [rdx + rdi + 19302]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
xchg dl, al
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
lea ax, qword ptr [rdx + rcx + 43552]
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
lea ecx, qword ptr [rax]
lea rcx, qword ptr [rdi]
test dl, 113
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
lea edi, qword ptr [rdx + rdi + 48234]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
sub rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
