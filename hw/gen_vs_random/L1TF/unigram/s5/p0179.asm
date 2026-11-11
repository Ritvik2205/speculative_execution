.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ecx, esi
dec ecx
xchg cl, dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
setns cl
or ecx, 82
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sub cl, 86
xchg ecx, ebx
and bl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
xor dil, -42
or di, 0b1000000000000000 # instrumentation
bsf di, di
xor bl, 38
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
