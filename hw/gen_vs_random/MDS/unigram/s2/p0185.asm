.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 39
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rdx, 40
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
btc si, bx
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovp rbx, rdx
test al, -81
and sil, sil
test bl, -14
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 69
and bl, 38 # instrumentation
cmovno rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
