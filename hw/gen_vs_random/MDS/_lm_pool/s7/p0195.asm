.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
xor bl, cl
xor ax, -12492
jmp .bb_0.1
.bb_0.1:
test al, bl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 65
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or bl, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
xor si, 80
or al, 16
and ecx, -104
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
test rax, -359674714
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
