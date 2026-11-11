.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rbx]
or si, 19
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
add bl, sil
lea edx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 20
seto al
cmp cl, dil
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
xchg al, al
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
or rbx, 18
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
