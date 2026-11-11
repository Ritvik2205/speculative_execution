.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 86
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
add eax, -55403434
btr rbx, rcx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
cmovs edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 12
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
adc si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
