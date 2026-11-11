.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, esi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
sbb eax, -984782068
cmovnp edx, edx
movzx ax, bl
test ecx, 33
movzx rdx, si
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
cmovo rbx, rbx
cmovo esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
add edx, ebx
cmp edx, 8
add bl, -18 # instrumentation
mov rax, rcx
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
bt ebx, 228
or eax, 2007177863
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
neg rbx
cmovnp eax, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
imul dx
add bl, 56 # instrumentation
cmovle rdi, rbx
add cl, 106 # instrumentation
cmovnp rcx, rbx
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
cmovs rsi, rax
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
xor dl, bl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
mov bl, 100
adc rax, 1542637830
test dl, 19
add sil, sil
cmp si, 45
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
and al, -127
cmovnp edi, edi
or si, 27
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
cmovnbe rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
