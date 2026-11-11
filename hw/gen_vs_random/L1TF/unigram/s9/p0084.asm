.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, edx
not rbx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 10
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
test rsi, 493258429
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
add bl, 64 # instrumentation
sbb bl, cl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 16
jmp .bb_0.1
.bb_0.1:
setno sil
lea di, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
nop
lea bx, qword ptr [rax]
setb cl
add al, -93 # instrumentation
cmovb rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
