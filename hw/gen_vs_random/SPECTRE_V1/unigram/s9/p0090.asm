.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, 50
add bl, -23 # instrumentation
setnle al
setns dil
add ax, 8031
add al, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], esi
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
