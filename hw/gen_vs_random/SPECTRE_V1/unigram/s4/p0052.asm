.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 3
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
cmp cl, 59
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
xchg al, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and eax, 933895314
add ebx, -47
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
add cl, 32 # instrumentation
cmovnbe rdi, rax
inc rax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 50
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
sub dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
