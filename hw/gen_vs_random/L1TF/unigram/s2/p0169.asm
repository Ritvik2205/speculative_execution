.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, -93
cmp al, 56
cmp rax, 108211639
add cl, -75 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
or cx, 16
btc rax, rdx
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], di
lea ebx, qword ptr [rbx + rsi]
cmovbe rcx, rbx
lea rax, qword ptr [rcx]
bt rax, rdx
adc si, 48
lea rsi, qword ptr [rdi + rax + 67]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
