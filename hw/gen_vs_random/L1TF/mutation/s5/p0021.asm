.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 1
lea ecx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
or dx, 1 # instrumentation
dec rsi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and ax, 26813
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
add bl, 89 # instrumentation
sbb dl, al
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
