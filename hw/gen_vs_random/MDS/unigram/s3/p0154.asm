.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
bt dx, ax
bts edx, edx
and bx, 13
bt esi, 3
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and sil, 47 # instrumentation
cmovnp esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
cmovb rdi, rdx
test rax, -708244380
cmovnz dx, ax
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 51
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
test esi, 425331143
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
