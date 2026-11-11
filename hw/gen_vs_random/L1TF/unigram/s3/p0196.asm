.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, 63
add cl, 27 # instrumentation
setnle cl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 83
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
cmovs rsi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
xor dil, -42
test rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
or rcx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
