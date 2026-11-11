.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and dl, 59
add cl, -41 # instrumentation
adc ax, di
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
xor al, al
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rsi + rsi]
lea di, qword ptr [rdi]
cmp esi, 110
xor ax, 34
setnbe cl
or eax, 1495028166
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
