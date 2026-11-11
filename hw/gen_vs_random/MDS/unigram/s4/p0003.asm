.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 86
cmovle rax, rsi
cmovl rax, rax
and al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
and dil, al
not rdx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
and dl, dil
cmovo rax, rcx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 89
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
