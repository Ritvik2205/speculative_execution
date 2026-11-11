.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
setnbe dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 114
cmp dl, 64
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
add dil, -117 # instrumentation
lea rax, qword ptr [rdi]
add bl, dl
lea rdi, qword ptr [rsi + rcx]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
and cl, 70
sbb dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
