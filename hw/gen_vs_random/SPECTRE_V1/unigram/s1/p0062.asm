.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdx
btc rdx, rcx
sbb bl, -41
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
setnbe cl
add dl, al
add dl, sil
lea ebx, qword ptr [rdi + rbx + 3]
js .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
cmp edx, 44
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
dec cl
add dl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
