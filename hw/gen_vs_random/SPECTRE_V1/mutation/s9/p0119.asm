.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -47 # instrumentation
setbe bl
and bl, al
and rbx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
imul ax, si, 123
adc cl, -19
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg al, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
bt ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
setnp dl
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
jmp .bb_0.2
.bb_0.2:
add cl, 83 # instrumentation
setbe al
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
add eax, -55403434
sbb al, cl
cmovz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
