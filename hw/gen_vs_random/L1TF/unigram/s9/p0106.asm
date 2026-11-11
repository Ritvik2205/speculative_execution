.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ecx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
setno dil
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
cmovbe eax, edx
add dl, 125 # instrumentation
cmovbe rdx, rdx
and dx, di
add al, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
setnbe al
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and al, sil
sub al, sil
neg dil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
