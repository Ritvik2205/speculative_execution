.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rax, -636362975
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, sil
test dil, -80
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test dl, bl
and eax, 366961170
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and di, 91
test dl, -119
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xor cl, dl
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
