.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
xor ax, -2537
or cl, dl
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 12
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
cmp sil, 96
xor ax, 17976
xor rax, 1636804787
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 24
cmovl esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
