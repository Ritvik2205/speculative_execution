.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 16
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
add al, -121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or rdi, 7
lea rbx, qword ptr [rsi + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 61
sbb bl, 22
cmp rax, rcx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
test dil, 18
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
