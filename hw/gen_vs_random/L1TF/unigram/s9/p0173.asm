.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
add dl, -10 # instrumentation
cmovns edi, esi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
sub cl, 86
btr si, bx
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 56
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rsi + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
btr eax, 47
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 59
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
add dil, 104 # instrumentation
mov edi, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
