.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rdi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdi]
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
sub rdi, rax
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
cmp dil, 10
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
cbw
sub rdx, rsi
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
bswap rsi
imul ecx, ecx, 76
and sil, 37
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
