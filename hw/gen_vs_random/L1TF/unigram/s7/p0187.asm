.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
setz dl
cmp edx, edi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
btc rbx, rax
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
add cl, 35 # instrumentation
sets al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
neg rsi
sub rsi, 59
cmp al, sil
neg rsi
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 99
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
