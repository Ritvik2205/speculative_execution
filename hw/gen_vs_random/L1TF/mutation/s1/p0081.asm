.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
setnbe cl
setb dil
or eax, 1495028166
bswap edi
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, -93 # instrumentation
cmovb rbx, rcx
lea edi, qword ptr [rdx + rdx + 45410]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
add bl, 21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
cmovbe eax, edi
sbb ax, -14164
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
sub cl, al
mov ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
neg si
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
