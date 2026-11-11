.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
add dl, -52 # instrumentation
adc bx, 45
cmovno edx, edx
sub bl, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 57
lea ax, qword ptr [rbx + rdi + 80]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
xchg rsi, rdx
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
lea rax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], 46
cmovle ebx, edx
add dl, -52 # instrumentation
adc di, 89
mul al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
