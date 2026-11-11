.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rax, rdx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and sil, bl
sbb edi, 92
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 61
add al, 3
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
add bl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
test sil, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 84
add dl, -11 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and cl, al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
movzx di, dil
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
