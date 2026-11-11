.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, dx
and al, bl
and bl, 68
and sil, 89
and al, bl
xor dl, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 72
and ebx, 45
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and al, dl
test rdi, 94
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
btr cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
