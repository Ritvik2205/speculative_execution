.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
test rcx, rbx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
sbb rcx, 46
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
test ebx, edx
lea ax, qword ptr [rdx + rdx + 55]
adc eax, 457059541
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
setno dil
and esi, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
