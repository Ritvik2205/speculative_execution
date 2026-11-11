.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 53
cmovl edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
xor dl, 34
btr esi, ecx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
cmovnbe ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and bl, 21 # instrumentation
cmovb di, bx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and cl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
cmovnb rcx, rcx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
test rdi, 29
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
or rdi, 21
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
