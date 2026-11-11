.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 64
add cl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
add dl, -47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
sets dil
cmovnbe cx, bx
add bl, -41 # instrumentation
xchg dil, cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], di
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
add bl, 106 # instrumentation
cmovs ebx, esi
sbb eax, 9
setb dil
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
