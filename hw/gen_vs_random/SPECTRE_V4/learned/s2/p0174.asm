.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 69
cmp eax, 2
xor al, -66
or eax, -612395655
or al, -47
or bl, 80
and dil, bl
xor al, -113
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
cmovbe bx, cx
and dil, 8
adc dil, 112
xor rdi, -72
add al, -55
sub dil, cl
and ax, 4
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
dec dil
cmp bl, cl
xchg al, cl
jmp .bb_0.1
.bb_0.1:
mov al, -114
test eax, 1600638830
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
cmovnbe ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
cmp sil, -100
test bl, 110
test cl, -52
cmp sil, 113
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
