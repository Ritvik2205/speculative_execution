.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
bswap rdi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovnbe esi, ecx
add ax, di
setnz bl
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
sub rax, -1628299544
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 90
cmovns edx, ebx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
add bl, 30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
