.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rcx, rdx
setbe cl
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
cmovns rsi, rax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 71
add dil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
xor bl, 32
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
cmp dl, sil
sets sil
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
