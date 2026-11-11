.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, bl
cmp cl, 3
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], dx
bts rax, 140
add bl, 7 # instrumentation
cmovnl eax, esi
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
dec bl
mov al, 20
test sil, 112
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, cl
test rcx, 83
add dl, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
xchg rcx, rax
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
