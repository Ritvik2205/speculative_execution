.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, bl
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 39
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
cmovo edi, edi
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 89
movsx rax, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
cmovnp rdx, rcx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
movsx ax, al
add bl, 126 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
