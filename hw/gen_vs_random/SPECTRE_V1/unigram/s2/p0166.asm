.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 67
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
sbb bl, 84
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
add dl, 20 # instrumentation
cmovnbe rsi, rdx
imul bl
setbe dl
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
imul eax, edx
add al, -106
add al, 28 # instrumentation
setnz al
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
