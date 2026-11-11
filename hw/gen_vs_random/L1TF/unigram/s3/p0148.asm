.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx, rdx
cmovl rcx, rax
btc edx, 10
dec edi
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
or ebx, edi
cmovnb ebx, edi
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
test sil, 29
xor rsi, rbx
add bl, -77 # instrumentation
cmovns dx, bx
dec edx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
or rdx, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
