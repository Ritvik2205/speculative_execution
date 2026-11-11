.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 78
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
add dil, -84
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 73
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xor rdx, rcx
and al, 49
add bl, al
or ax, -30990
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmp dl, 23
dec sil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
adc al, 43
or bl, dl
add al, 19
sub bl, 56
sub dil, 65
sub cl, dil
xor al, sil
or rbx, rdx
sub rax, 120
or bl, -80
or sil, cl
imul dx, ax
movsx ax, dl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and dil, -23
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
