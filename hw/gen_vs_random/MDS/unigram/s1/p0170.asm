.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 65
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and al, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and rax, rdx
and dl, -72 # instrumentation
not sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
btr rdx, 44
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and cl, 79
cmovns si, di
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
test bl, cl
not al
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
xor bl, -88
and dl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
