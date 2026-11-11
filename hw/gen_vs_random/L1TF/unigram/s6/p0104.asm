.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
add ecx, 54
lea ax, qword ptr [rsi + rdx]
cmovnl dx, di
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
cmovbe ecx, edi
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rbx, -88
test edx, edx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 30
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and dl, 10
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
