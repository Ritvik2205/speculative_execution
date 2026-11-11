.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul cl
mul dil
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
add dl, 125 # instrumentation
adc dl, sil
add bl, 106 # instrumentation
cmovs esi, ebx
add cl, 73 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp esi, edx
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
imul bl
add bl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
cmovnp rbx, rax
setbe cl
or si, 0b1000000000000000 # instrumentation
bsr di, si
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
test bl, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
