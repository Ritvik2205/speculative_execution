.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
inc rbx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 39
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
sub bl, dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
sbb sil, bl
cmp esi, 67
setnb sil
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
