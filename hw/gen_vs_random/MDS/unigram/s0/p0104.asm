.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 121 # instrumentation
bt rbx, 90
or di, 0b1000000000000000 # instrumentation
bsr bx, di
cmovb ax, ax
cmovnz rcx, rsi
or ax, -7150
or rax, 1020005579
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and dl, 8 # instrumentation
cmovle si, bx
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
cmovno di, dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
btr si, cx
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
and al, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
cmovnl ecx, ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmovns rsi, rsi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
test si, 26
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
