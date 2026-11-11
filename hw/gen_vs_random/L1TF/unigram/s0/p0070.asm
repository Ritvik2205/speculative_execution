.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
cbw
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
add al, -122 # instrumentation
cmovnbe esi, esi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 53
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
sbb dil, dl
xor esi, edi
sub rdi, 82
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
