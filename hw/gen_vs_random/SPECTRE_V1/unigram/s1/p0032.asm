.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rsi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 62
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
add bl, -127 # instrumentation
movzx ebx, dl
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
lea esi, qword ptr [rax + rdi + 84]
bt di, 236
add cl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
cmovnbe rbx, rax
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 36
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 60
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
