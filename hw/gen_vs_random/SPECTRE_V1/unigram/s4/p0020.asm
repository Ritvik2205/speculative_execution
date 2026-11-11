.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 15
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
mul al
cmovnbe rdi, rbx
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
add dl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and bl, -65
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
seto sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
