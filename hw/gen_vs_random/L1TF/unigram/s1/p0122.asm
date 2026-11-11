.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx + rdi + 29]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rdx, rbx
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
lea cx, qword ptr [rbx]
lea cx, qword ptr [rsi + rdx + 98]
jmp .bb_0.1
.bb_0.1:
cmovp rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
btc rbx, 54
lea ebx, qword ptr [rdx + rdi]
setl dl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], di
cmovnbe edi, ecx
xchg rcx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
