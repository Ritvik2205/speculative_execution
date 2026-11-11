.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
bt si, 239
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
xchg rsi, rax
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
lea rcx, qword ptr [rdi + rax]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
movsx rcx, si
test dx, si
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
cmovno si, ax
mov al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
