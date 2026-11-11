.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
mul al
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
add bl, -9 # instrumentation
adc rdi, 40
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 42
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
bt rbx, rsi
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
neg sil
and edi, 74
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
