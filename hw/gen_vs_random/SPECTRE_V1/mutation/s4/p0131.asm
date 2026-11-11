.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527]
bt di, 236
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105
lea rcx, qword ptr [rax + rcx + 59274]
adc al, cl
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
movsx rcx, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rsi]
test sil, 87
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmovnb bx, cx
lea rsi, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
add al, 127 # instrumentation
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
