.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and ax, di
xor dl, al
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
not cx
bt edx, 69
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
cmovnl rsi, rsi
cmovns ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and sil, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
xor edi, 38
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
test al, 74
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
bts rsi, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
