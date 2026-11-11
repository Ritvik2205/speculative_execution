.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
lea rsi, qword ptr [rcx + rcx + 24]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add sil, 90 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
add bl, 112 # instrumentation
setnbe dl
setns dl
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, 55
bt dx, cx
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
btr di, 188
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
test eax, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
