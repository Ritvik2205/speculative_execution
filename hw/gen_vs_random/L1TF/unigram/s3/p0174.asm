.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
mul bl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
test al, dl
sub bl, al
dec dil
btc dx, ax
or bl, al
imul ax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 35
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
dec bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
