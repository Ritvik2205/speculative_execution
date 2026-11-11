.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rcx + rax + 55452]
test eax, 1730342416
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
btc cx, si
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
lea rsi, qword ptr [rax + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
cmovnb rsi, rbx
add al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
