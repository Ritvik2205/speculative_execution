.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe bx, ax
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
lea rdx, qword ptr [rcx + rax]
add bl, 13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
add cl, 121 # instrumentation
cmovs ebx, ebx
xchg rbx, rbx
cmp eax, 912798305
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
cmovz ebx, ecx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
lea si, qword ptr [rsi + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
btr ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
