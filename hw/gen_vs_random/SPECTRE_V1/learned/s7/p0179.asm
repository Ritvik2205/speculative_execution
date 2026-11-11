.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb edx, ecx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
cmp rax, -1365488374
and dl, sil
mov dil, bl
adc al, cl
sbb bl, al
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
sbb dl, sil
lea edi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
