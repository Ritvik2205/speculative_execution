.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
setns bl
and rsi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rsi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 95
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 41
dec dl
add bl, 100
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
test ebx, 32
and al, -119
btc ecx, 59
add ecx, 88
setnp dl
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
