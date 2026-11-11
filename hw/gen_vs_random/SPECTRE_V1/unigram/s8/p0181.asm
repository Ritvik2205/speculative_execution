.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
cmovp dx, cx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
add dl, 115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
lea rbx, qword ptr [rax + rdi]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
sub al, al
add bl, -53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
or ebx, -124
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 58
lea edi, qword ptr [rsi + rsi + 40]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 46
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
