.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
mov dl, cl
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 6
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
sbb dl, al
and al, sil
sub bl, dl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
