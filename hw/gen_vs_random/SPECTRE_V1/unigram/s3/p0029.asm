.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
mov bl, dil
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], esi
or cx, 0b1000000000000000 # instrumentation
bsr si, cx
add al, 112 # instrumentation
adc al, dl
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
setnz al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
add dl, -101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
add dil, -84 # instrumentation
lea edi, qword ptr [rdx + rdx + 13]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
