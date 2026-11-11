.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
setnle sil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
sbb sil, dl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], ax
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
cmp rbx, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
