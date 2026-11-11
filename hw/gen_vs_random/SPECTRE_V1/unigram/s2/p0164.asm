.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
or al, bl
add bl, -108 # instrumentation
sbb bl, 20
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
mul di
add cl, 22 # instrumentation
cmovns rdi, rax
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
add bl, 112 # instrumentation
setnbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
