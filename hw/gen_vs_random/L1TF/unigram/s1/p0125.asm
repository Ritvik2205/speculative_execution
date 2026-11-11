.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
adc di, cx
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
adc cl, bl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 15
mul rax
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
lea bx, qword ptr [rdi + rdi + 98]
cmovnz edx, ecx
setl dil
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
cmovl edx, ecx
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
