.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
setz sil
lea edi, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rsi
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmovs ax, bx
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
add dl, 109 # instrumentation
cmovnb rdi, rax
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
btc ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
