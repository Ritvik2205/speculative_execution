.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 32
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rbx
test sil, dl
lea rcx, qword ptr [rdx + rcx + 75]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
setnp cl
btr edi, esi
adc rdi, rbx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 76
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
movzx ax, cl
cbw
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
