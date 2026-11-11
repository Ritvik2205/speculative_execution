.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
mov cl, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
neg rax
cmovz edx, ebx
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
xor sil, 73
and ax, -23308
btc rcx, rbx
sub ecx, -107
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor cx, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
