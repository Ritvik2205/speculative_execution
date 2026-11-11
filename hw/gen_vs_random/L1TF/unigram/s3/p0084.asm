.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
add bl, 92 # instrumentation
sets al
and bl, dil
not ebx
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
or ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 8
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 33
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 68
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and al, -68
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
