.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, si
and di, 11
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
seto sil
lea si, qword ptr [rbx + rdi + 34]
btc bx, si
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test si, 51
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
