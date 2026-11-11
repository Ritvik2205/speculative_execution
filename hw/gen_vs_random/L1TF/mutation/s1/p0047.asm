.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
or dx, 1 # instrumentation
dec rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
bt ecx, 1
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
and ax, 37
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
add bl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
or bl, bl
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
bt rdi, 18
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
