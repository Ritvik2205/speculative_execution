.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor ax, -16232
sbb dl, -26
cmovno dx, bx
jmp .bb_0.2
.bb_0.2:
cmovnp rsi, rax
and rax, 1163013815
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
jmp .bb_0.5
.bb_0.5:
setle dl
jmp .bb_0.6
.bb_0.6:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
