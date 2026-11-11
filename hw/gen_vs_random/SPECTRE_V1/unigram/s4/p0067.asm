.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cl
lea ecx, qword ptr [rcx + rsi + 79]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
cmp cl, 59
sub cl, cl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
add al, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc dx, -112
movsx esi, bx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
add bl, 24 # instrumentation
lea rbx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
