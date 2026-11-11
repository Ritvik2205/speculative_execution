.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or eax, -900576213
and al, -103
and al, 35
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
xor bl, sil
test dl, 48
and ax, 29207
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
or rdi, -11
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
