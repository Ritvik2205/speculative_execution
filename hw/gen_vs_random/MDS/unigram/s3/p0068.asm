.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
or bl, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and si, cx
bts di, bx
and al, 93
cmovle rcx, rbx
btc ax, 54
bts ax, cx
or di, 0b1000000000000000 # instrumentation
bsr si, di
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
test cl, 28
cmovbe rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 96
or dil, -52
btr rsi, 73
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
xor al, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
