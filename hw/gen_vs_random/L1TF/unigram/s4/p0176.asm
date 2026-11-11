.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
xor bl, bl
bt rbx, rdi
sub bx, 53
sub rdx, 26
add rsi, rdi
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 91
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnb rsi, rax
adc bl, 97
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
setnbe dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
