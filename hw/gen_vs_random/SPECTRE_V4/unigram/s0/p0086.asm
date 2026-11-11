.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], eax
adc eax, -1513455903
cmovns cx, cx
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
cmovns dx, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 15
and rdx, 16
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
test dil, 11
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 80
dec rbx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 3
cmovle rcx, rdx
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and al, -36
and bl, al
imul ecx, ebx, 63
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
sbb si, 25
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rsi
or bl, sil
cmovnb esi, eax
cmovns ecx, eax
and dl, 17
and rsi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rsi]
add cl, 8 # instrumentation
adc al, cl
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 65
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
cmovnb esi, edx
cmovp rax, rsi
add rax, rcx
dec sil
sub al, 50
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
sbb sil, bl
movsx edx, cx
or edx, -127
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
test ebx, -595096626
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
sub rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
