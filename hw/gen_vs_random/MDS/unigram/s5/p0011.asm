.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
or dl, -97
bt rdx, rbx
xor edi, 45
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and bl, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rbx, 65
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and cl, 7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and al, 67 # instrumentation
cmovl rdx, rsi
xor dil, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 58
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmovnb ecx, edi
bts si, dx
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
test rax, -2052112368
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
