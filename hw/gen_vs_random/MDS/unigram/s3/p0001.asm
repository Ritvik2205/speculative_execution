.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
btc cx, 115
cmovnl rdi, rcx
and al, -53 # instrumentation
cmovbe ecx, eax
xor cl, dil
test al, 22
and eax, 454700988
xor al, dl
cmovp di, dx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and dl, 120 # instrumentation
cmovnz ebx, edi
or al, al
cmovbe ax, di
cmovs ebx, edi
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
cmovno rax, rbx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
