.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
xchg rax, rcx
cmovno cx, bx
test sil, 97
and al, -23
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
mov cl, al
xchg al, sil
inc eax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
