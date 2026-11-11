.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
sbb esi, -4
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 52
xor di, si
test rsi, 59
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
setno al
adc bl, dil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 25
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
imul rsi, rdi
lea ebx, qword ptr [rax]
add dl, 39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
cwd
mul rdi
xchg di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
