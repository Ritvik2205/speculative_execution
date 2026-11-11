.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnbe eax, ecx
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
cmovo rbx, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
xor bx, cx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
mov al, 34
imul cl
cmovz ecx, ebx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 59
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 61
or cl, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
xor cl, -54
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
