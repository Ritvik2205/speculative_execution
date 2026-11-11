.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 37 # instrumentation
cmovnbe si, ax
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
btc bx, di
test ax, 6779
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
test eax, -571234566
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
or bl, 43
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
btc si, 99
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and cl, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
xor edx, 94
xor cl, 15
or al, 30
xor rbx, rax
cmovno rdi, rdi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
