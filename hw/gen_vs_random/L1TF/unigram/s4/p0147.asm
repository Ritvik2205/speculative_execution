.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
cmovno ebx, ebx
sets al
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
not edi
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
imul bx, si, -58
jmp .bb_0.1
.bb_0.1:
cmovns di, bx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
add dl, 85 # instrumentation
cmovp bx, bx
mov dil, al
mul edi
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
btr si, ax
add bl, 68
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
