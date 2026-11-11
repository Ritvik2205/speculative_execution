.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
lea esi, qword ptr [rsi]
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], si
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
and rbx, rdx
add dl, 20 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 83
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc di, 25
add dil, 72
imul rdx, rax, 100
cmovle esi, ebx
lea bx, qword ptr [rbx]
setnb dil
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
add bl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
mov rsi, rcx
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
