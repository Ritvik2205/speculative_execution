.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
xor sil, sil
bts esi, 243
imul di, cx, 75
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
lea rbx, qword ptr [rdi + rax]
sbb ax, -26133
add al, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 81
add al, -21 # instrumentation
mov esi, ecx
adc rsi, 36
lea eax, qword ptr [rcx + rax]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
