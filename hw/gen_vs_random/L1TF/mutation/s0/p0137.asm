.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
inc bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
cmovns rcx, rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
jmp .bb_0.1
.bb_0.1:
test rax, 404297506
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
sub rax, 1715032616
test edx, 1891691791
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and al, -68
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
jmp .bb_0.2
.bb_0.2:
add dl, -1
and cl, dl
add rax, 1633593912
add bl, bl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
cmovle ecx, edi
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
add bl, -124 # instrumentation
setnz bl
bswap rdi
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
