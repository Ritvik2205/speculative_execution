.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
btc edx, edi
test si, cx
movzx rdx, di
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
sbb cl, cl
btc rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 58
add al, 105 # instrumentation
cmovl ebx, eax
mov al, al
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
xor al, -6
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 88
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
add cl, dl
sbb cl, al
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 44
test rbx, 1219566903
xchg rbx, rbx
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
or sil, -47
or di, 0b1000000000000000 # instrumentation
bsf si, di
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 19
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and eax, -1948401947
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rsi
add cl, al
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
btc ebx, 83
inc cx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
sub di, 9
test rbx, 1219566903
inc cx
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
cmp rax, 1097504565
mov bl, bl
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
imul di, bx, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
