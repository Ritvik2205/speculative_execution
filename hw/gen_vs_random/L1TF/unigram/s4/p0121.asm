.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 64
add cl, sil
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovnle si, si
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and dil, al
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
test sil, 29
lea eax, qword ptr [rax]
lea rsi, qword ptr [rdi + rdx]
add cl, -41 # instrumentation
adc di, dx
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
