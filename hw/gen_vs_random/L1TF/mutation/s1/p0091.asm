.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rsi
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
