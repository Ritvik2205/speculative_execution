.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
cmovnb rax, rsi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
add cl, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
lea edx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
add sil, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, bl
movsx rdi, bx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
setp al
cmovnp rcx, rsi
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
