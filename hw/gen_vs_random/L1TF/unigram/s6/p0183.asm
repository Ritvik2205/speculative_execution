.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
cmovb ecx, edi
sub esi, 17
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
add al, -57 # instrumentation
cmovo rdi, rsi
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -76
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovno si, ax
cmovbe esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
