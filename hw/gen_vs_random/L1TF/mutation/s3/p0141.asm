.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
add cl, -93 # instrumentation
cmovb rbx, rcx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
add bl, 21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
lea edi, qword ptr [rdx + rdx + 45410]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
neg si
sub cl, al
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
mov ebx, edi
sbb ax, -4845
cmovbe eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
