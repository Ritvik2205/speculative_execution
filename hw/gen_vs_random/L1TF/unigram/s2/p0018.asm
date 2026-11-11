.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
btc ebx, ecx
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], di
setnle al
add ecx, 70
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
adc dil, 120
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
cmovnbe ecx, eax
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
