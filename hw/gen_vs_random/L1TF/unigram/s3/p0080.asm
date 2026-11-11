.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cl, dl
cmovp di, si
cmovb edi, ecx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 48
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
sub dl, -34
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
add dl, 68 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
or rcx, 89
lea ebx, qword ptr [rdx]
and edi, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
