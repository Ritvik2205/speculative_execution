.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 40
add cl, 88
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xchg cl, dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rcx]
xor sil, bl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
