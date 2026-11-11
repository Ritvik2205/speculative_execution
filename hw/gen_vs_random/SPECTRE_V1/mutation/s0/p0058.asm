.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
and dil, 98
lea edx, qword ptr [rbx + rcx + 37832]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cdq
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
mov al, dl
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
test dx, si
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
cmovno si, ax
movsx rcx, si
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
lea rcx, qword ptr [rdi + rax]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
