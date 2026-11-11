.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
btc di, ax
sbb dl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
lea ax, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
adc rbx, 75
sbb cl, dil
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 40
lea rbx, qword ptr [rax + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
test cl, 93
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
lea edi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 90
cmp bl, sil
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
test dl, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
