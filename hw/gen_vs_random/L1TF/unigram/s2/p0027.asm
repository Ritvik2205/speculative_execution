.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 65
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
bt rsi, 88
and di, 47
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
test rbx, rsi
jmp .bb_0.1
.bb_0.1:
add eax, 109
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
xor sil, al
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
sub ecx, 88
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
bt ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
