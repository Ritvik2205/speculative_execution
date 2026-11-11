.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
xor cl, -91
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
test al, sil
imul edx
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
lea cx, qword ptr [rsi + rbx + 84]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
add al, al
add al, 72 # instrumentation
cmovns di, dx
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
