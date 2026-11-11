.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
xor sil, -126
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and al, 106
test al, 66
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
test rdi, 18
xor ax, -4010
test al, cl
and al, -54
test bl, cl
and dil, sil
and al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
