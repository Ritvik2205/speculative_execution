.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 77
or cx, 28
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
add dl, 64 # instrumentation
sbb dl, al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 33
adc cl, -34
lea bx, qword ptr [rbx]
sub si, -105
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor bx, 77
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
