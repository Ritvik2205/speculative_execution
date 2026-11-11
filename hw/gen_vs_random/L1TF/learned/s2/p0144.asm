.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
mov edi, edx
lea di, qword ptr [rdi + rdi + 8878]
sbb cl, 83
cmp al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -64
btc rdi, 243
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
setnbe bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 64
lea rdx, qword ptr [rax + rsi]
mov si, di
cmp eax, 912798305
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
