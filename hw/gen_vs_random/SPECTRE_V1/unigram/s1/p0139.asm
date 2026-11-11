.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsf ax, si
mov ax, cx
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 82
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
mov sil, sil
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 81
add al, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
setns al
add bl, 112 # instrumentation
setnbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
