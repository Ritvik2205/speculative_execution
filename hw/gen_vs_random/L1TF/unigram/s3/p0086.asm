.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, cl
lea ebx, qword ptr [rcx + rcx]
sbb ecx, 24
cmovs dx, ax
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
setz bl
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 78
add cl, -121 # instrumentation
movsx dx, cl
lea rbx, qword ptr [rax + rdx + 70]
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
sbb dx, 52
cmovnz ax, si
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
