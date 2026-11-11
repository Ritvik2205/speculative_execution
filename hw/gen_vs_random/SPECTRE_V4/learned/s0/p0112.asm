.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, cl
add al, -55
and al, -118
jmp .bb_0.1
.bb_0.1:
cmp sil, dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
cmovle rax, rbx
or rax, -2144083737
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor rdi, -72
btc rdx, rbx
sbb al, -3
xchg rcx, rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and al, -118
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and si, -74
test ecx, 860867711
or bl, dl
and cl, al
sbb cl, 40
cmp cl, -105
dec cl
cmp cl, -105
sub dl, -16
test al, 18
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
xor dil, cl
xor al, 106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
