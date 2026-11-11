.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
setz al
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
movzx dx, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
sub edi, 56
lea rax, qword ptr [rcx]
test bl, sil
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 53
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
