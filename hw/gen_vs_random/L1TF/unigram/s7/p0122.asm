.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rax + rbx + 35]
bts si, si
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
sbb dil, dl
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor al, al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
add cl, 89 # instrumentation
adc dl, cl
cmovle rsi, rdi
and ebx, 108
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
add bl, 115 # instrumentation
setz cl
lea rcx, qword ptr [rdx]
setnbe sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
