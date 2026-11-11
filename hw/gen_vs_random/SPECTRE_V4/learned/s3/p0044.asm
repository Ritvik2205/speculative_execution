.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
cmovnl di, bx
and dl, 23
bt rdx, rcx
cmp ax, -15409
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
adc rdi, 3
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 2
sub esi, 31
sbb rax, 183833426
xor al, -2
imul rdi, rsi
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
add dl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
