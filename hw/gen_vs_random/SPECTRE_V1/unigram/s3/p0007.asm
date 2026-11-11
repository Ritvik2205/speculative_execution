.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb dil
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
bt rcx, rbx
movzx dx, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
add sil, -94 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 13
test ax, 18607
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
setnbe cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
lea rbx, qword ptr [rdx]
setnl cl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
setns sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
