.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
lea edi, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
add bl, -92 # instrumentation
setnz cl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 21
cmp rdi, rdi
mov eax, 20
lea rax, qword ptr [rax + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
