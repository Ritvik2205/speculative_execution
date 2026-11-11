.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
setnle al
adc bl, 70
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
cmp edx, eax
lea rsi, qword ptr [rcx + rdx]
sbb di, 77
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 89
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
mov al, sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
