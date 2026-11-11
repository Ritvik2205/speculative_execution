.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12
test al, -26
xor dl, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
sbb bl, dil
and dil, al
sub ax, cx
test eax, 1947430392
btc rdi, rdx
cmovnz rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 73
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
dec cl
sbb dl, 53
inc edx
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
sub dl, -16
cmp dl, 23
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
add dil, bl
xor sil, dl
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
