.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
setnle dl
add eax, ebx
mov bl, bl
dec ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
xor al, 14
jmp .bb_0.1
.bb_0.1:
or di, 0b1000000000000000 # instrumentation
bsf dx, di
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
adc cl, 62
btc bx, di
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
