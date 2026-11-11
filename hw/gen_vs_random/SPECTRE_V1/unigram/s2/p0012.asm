.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
cmp dl, sil
movsx ebx, bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, 50
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
setb cl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
add bl, 106 # instrumentation
cmovs eax, edi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
