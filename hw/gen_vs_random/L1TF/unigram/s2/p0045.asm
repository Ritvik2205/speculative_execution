.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
imul edx, ecx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
cmp dx, 80
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rax
add dl, 121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
add cl, -72 # instrumentation
cmovp edi, edi
add cl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
sub bx, 47
btr bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
