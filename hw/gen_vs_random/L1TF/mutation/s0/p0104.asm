.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
cmp bx, 90
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
lea esi, qword ptr [rcx]
cmovnz si, si
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
sbb ax, -9396
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
lock and word ptr [r14 + rcx], -29
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
