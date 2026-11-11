.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
add dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
add al, 72 # instrumentation
cmovns di, bx
xchg bl, al
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and bl, 87
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
bts di, 144
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
sub ax, -17837
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
