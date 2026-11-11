.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dx
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and al, -68
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rax + rsi + 87]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
cmp sil, -11
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
