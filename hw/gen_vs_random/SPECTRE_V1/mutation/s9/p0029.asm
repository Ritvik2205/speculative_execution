.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
lea eax, qword ptr [rdx + rdx + 832]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
sub al, -1
or rdi, 68
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
adc cx, cx
loop .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
add bl, -95
xor al, -74
sbb bl, al
cmovno dx, di
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
movsx di, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
