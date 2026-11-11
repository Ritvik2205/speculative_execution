.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
or edx, eax
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
lea ebx, qword ptr [rbx]
sub eax, -911655926
jmp .bb_0.1
.bb_0.1:
test rax, 1469613902
lea rdx, qword ptr [rcx + rdx + 44106]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or al, dl
and ecx, -38
jmp .bb_0.2
.bb_0.2:
test bl, dil
and bl, dl
lea rdx, qword ptr [rdx + rax + 10045]
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
or dil, -28
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmp eax, 912798305
or rdx, -98
inc sil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
add dl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
btc cx, 54
lea eax, qword ptr [rbx + rdi + 265]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
