.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
adc rax, -1877286258
mov dil, dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
add sil, 18
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
add dl, dl
neg rax
and rsi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
mov rax, -6437636498926413678
and edi, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
