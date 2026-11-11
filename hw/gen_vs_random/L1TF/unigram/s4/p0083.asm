.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 57
xor cx, bx
inc bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
setz dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], esi
sub di, 10
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
