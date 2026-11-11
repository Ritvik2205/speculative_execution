.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb sil
test rbx, 41
sub rbx, -11
mul si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle rax, rdx
setle dil
and rdi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
dec sil
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 93
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
