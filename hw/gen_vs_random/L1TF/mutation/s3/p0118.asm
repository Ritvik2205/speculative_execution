.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
bts esi, edx
adc eax, 457059541
inc eax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
xor cl, 89
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
setnp al
xor sil, 64
jmp .bb_0.1
.bb_0.1:
add bl, -92 # instrumentation
setnz al
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmovnp si, cx
cmovl rdi, rsi
jmp .bb_0.2
.bb_0.2:
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 112
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
