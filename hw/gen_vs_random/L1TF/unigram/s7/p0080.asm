.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
cmp dx, 53
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
add dl, -52 # instrumentation
adc cx, 54
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
lea rax, qword ptr [rax + rdi + 38]
sub ecx, 38
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
xor eax, -69
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
sbb ecx, 98
test ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
