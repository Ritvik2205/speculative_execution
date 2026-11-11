.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, cx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
add cl, -73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
add rax, 909978580
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or dl, 8
sbb bl, al
cmovb di, cx
setnp cl
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
btc eax, 220
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
xchg cl, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
or ax, -10161
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
bts edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
