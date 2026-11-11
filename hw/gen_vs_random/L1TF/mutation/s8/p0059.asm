.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 73
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
xor al, al
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
add cl, -41 # instrumentation
adc ax, di
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi]
or eax, -401020526
setnbe cl
cmp esi, -52
lea edx, qword ptr [rsi + rsi]
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
