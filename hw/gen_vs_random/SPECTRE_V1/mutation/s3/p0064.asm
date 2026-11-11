.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 73 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
cmovnb bx, si
xor si, 23
mov bl, bl
lea si, qword ptr [rcx + rbx + 46193]
xor rax, 1636804787
adc sil, -18
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
