.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 63
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
cmovnle si, si
or bl, -88
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
or bl, dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ebx
test dil, dil
lea dx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
