.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rcx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 97
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 10
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
cmovnbe rsi, rdi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 10
add cl, -36
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
sub al, cl
lea si, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
