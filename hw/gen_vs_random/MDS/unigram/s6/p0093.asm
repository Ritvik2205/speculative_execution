.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
test bl, al
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and cl, cl
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
test rdi, 7
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
xor bl, dil
test bl, 65
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 26
btr si, 208
xor al, dil
btr edx, 197
and dl, -41 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
