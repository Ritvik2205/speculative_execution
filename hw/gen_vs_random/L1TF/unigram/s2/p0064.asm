.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 78
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdi]
xor bl, -6
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
lea rax, qword ptr [rdx + rax + 75]
lea rcx, qword ptr [rdi + rcx + 28]
add al, 27 # instrumentation
sbb esi, ebx
bswap rdx
add edi, ecx
bt dx, dx
or di, 0b1000000000000000 # instrumentation
bsf ax, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
