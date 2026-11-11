.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or bl, cl
dec bl
imul dx, cx
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdx
adc ax, 17267
sbb bl, bl
mul cl
adc bx, 52
and rcx, rax
adc rax, rdi
xchg rbx, rdi
cmovnbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
mul sil
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
adc cl, al
xchg rax, rdi
test di, -19523
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 11
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
cmp eax, eax
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
sub cx, -114
cmovz rbx, rax
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
xor dl, -123
add dl, -59 # instrumentation
movsx ecx, bl
test esi, -222751961
movsx esi, bl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
btr cx, di
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor rdi, -72
cmovno ebx, edx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
adc dl, cl
or sil, bl
add cl, -20 # instrumentation
adc dil, al
sub al, dl
add dil, dl
and cl, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
