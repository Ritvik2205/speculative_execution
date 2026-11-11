.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
seto sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test rbx, rax
bswap rdx
add dl, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
lea rdi, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 65
sub dx, 34
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 14
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
