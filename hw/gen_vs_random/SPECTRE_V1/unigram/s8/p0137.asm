.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 87
xchg rbx, rsi
mov rax, rdx
lea edi, qword ptr [rdi + rcx]
add dl, -51 # instrumentation
cmovno rdx, rsi
btc di, 3
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 72
mov sil, dl
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
setp cl
adc dl, sil
neg edx
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
