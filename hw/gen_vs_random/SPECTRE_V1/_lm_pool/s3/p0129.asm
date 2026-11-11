.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
sub al, -82
and al, dil
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
xor dl, al
sbb al, -112
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
or rcx, 11
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
mov sil, cl
sub di, 60
cmp dil, -58
cmovle dx, di
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
