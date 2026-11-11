.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], ax
add rbx, rdx
sub cl, 32
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
adc cl, 62
cmovnp rax, rax
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 26
xor al, 14
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 69
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
lea rax, qword ptr [rbx + rdi]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
sub rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 3
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
