.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdi, rbx
inc esi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], di
setl al
test cl, cl
btc ax, ax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
or al, cl
jmp .bb_0.1
.bb_0.1:
sbb si, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
setnl sil
add edi, 81
sub al, -97
add bl, -40 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
sub ax, 7297
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
