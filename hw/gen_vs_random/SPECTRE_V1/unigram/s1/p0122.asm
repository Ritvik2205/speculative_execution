.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx + rbx]
cmp cl, dl
add dl, -46 # instrumentation
cmovbe rdx, rsi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
xor dil, -37
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
adc ax, 24404
lea dx, qword ptr [rax + rbx + 24]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
and rsi, rax
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
add al, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rax]
sbb dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
