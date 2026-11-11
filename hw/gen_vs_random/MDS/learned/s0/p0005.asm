.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
xor cl, 98
or al, 74
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
or al, -24
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
or dil, 12
and al, al
xor dil, -70
xor sil, -46
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
or al, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
test edi, -1252846009
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
