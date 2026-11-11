.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and di, 68
or cl, -78
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovs bx, di
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 67
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
xor eax, -603819833
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
sub rdx, rax
mul rax
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
