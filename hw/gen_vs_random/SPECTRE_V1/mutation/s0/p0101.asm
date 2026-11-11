.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
not dil
imul dl
inc dil
sub cl, -47
bt eax, 78
add bl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 13 # instrumentation
cmovno rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
xchg rbx, rsi
cmp cx, 19
cdq
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
imul eax
or dl, al
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
