.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, al
cmovp ebx, edi
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 93
xchg ecx, edi
inc ecx
mov edx, ecx
btc ax, si
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor bl, dl
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
xchg rdi, rcx
and dil, -22
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
cmp edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
