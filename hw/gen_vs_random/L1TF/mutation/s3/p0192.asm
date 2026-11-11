.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
btc cx, si
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
lea rsi, qword ptr [rax + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
test eax, -385619864
lea rbx, qword ptr [rcx + rax + 55452]
add al, 64 # instrumentation
cmovnl rdx, rbx
jmp .bb_0.1
.bb_0.1:
add al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
cmovnb rsi, rbx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
