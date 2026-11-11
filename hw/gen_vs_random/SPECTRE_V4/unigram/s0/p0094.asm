.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
test cl, dl
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
add cl, -37 # instrumentation
adc edx, 92
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
sub al, dl
and rax, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rax]
cmovb edx, esi
add sil, 26
add bl, 63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
cmovnbe cx, bx
or al, -71
add rdx, rax
and ecx, 67
or al, al
test edi, -1249897727
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
cmovp edx, edx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
sub bl, sil
cmovs eax, esi
adc esi, 90
imul rdi
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 87
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
or sil, 64
sub bl, 17
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
adc sil, 23
xchg eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and cx, 17
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
sbb cx, bx
cmovo rcx, rbx
movzx rdi, bx
sbb dil, cl
test bx, ax
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
adc di, -110
add bl, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
