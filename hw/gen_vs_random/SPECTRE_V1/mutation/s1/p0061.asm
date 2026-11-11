.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
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
cmp cx, 88
cdq
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
jmp .bb_0.2
.bb_0.2:
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
setp bl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
sub ax, -17837
sbb si, bx
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
cmp dl, -115
neg ax
cmovnb esi, ebx
setbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
