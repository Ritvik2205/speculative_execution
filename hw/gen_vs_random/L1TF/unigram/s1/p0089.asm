.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
setnle cl
add al, 64 # instrumentation
cmovnl rax, rbx
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
add bl, -3 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 77
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
bswap rax
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
or rdi, 64
adc ax, -8436
test dl, 22
add bl, -3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
