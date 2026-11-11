.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 46
sbb edx, 23
neg rbx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
cmovle rcx, rax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
sub bl, sil
sub dl, 41
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rcx
cmp rbx, 62
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 29
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
