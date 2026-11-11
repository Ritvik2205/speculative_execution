.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 111
adc bl, sil
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
cmovno bx, dx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
imul al
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
sub dil, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 73
cmovl edx, eax
or eax, -126
bt ecx, eax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
lea si, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
