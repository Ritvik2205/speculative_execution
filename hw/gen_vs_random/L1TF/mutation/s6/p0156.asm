.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and dl, 10
xor al, al
add cl, -41 # instrumentation
adc ax, di
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi]
or eax, 287965578
xor ax, -24879
setnbe cl
lea edx, qword ptr [rsi + rsi]
cmp esi, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
