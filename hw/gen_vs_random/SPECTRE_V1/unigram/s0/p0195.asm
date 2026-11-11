.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rcx + rsi + 7]
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
xor bl, 61
test eax, 70
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
or dil, dil
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
add cl, 22 # instrumentation
cmovns rax, rcx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
