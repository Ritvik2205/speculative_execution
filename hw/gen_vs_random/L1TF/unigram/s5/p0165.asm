.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
lea ecx, qword ptr [rcx + rsi + 65505]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
or rsi, 88
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
cmovb edx, edx
sub di, bx
add dl, 109 # instrumentation
cmovnb rsi, rdx
mov eax, 96
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
cmovnb edi, eax
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
add al, sil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
