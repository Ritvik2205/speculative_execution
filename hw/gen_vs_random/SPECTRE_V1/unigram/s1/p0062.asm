.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 7
cmp edx, 44
lea rbx, qword ptr [rdx + rcx + 62]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and si, 37
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
add al, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
bts ax, 64
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb sil, sil
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
test cl, cl
setno bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
