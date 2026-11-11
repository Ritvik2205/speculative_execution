.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 82
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
or bl, dl
movzx ebx, dx
sub eax, -911655926
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
mov bl, sil
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
adc ebx, 77
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 65
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
