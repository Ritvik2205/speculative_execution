.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
bt si, 239
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
xchg rsi, rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
mov al, dl
test dx, si
cmovno si, ax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
lea rcx, qword ptr [rdi + rax]
movsx rcx, si
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
