.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
dec di
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
jmp .bb_0.1
.bb_0.1:
add sil, 18
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -99
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
setl bl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -39
adc ebx, edx
cmovo ebx, eax
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
cmovnbe edi, edx
btc edi, edi
lea edi, qword ptr [rbx]
sub ax, -12040
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
bts rbx, rsi
add dl, 40 # instrumentation
cmovp rcx, rdx
xor cl, al
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
