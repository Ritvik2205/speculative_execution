.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, si
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
xor bl, dl
add al, -72
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
not al
add cl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
cmovnb esi, eax
xchg cl, cl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
