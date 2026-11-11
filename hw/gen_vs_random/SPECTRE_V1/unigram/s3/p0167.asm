.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 75 # instrumentation
sbb sil, dl
setns dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
test dx, 47
cmovs ax, si
setnp dl
bt edx, 53
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, 77
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 3
cmovno rcx, rbx
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
mul di
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
and bl, dl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
