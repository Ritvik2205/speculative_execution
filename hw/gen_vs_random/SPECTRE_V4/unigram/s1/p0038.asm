.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, rax
bswap rsi
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
mov edx, -950755477
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
xor edi, edi
movzx rbx, dx
add dl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 38
or dx, 86
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 19
imul cx, si, 88
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], 90
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
bswap eax
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
adc ecx, edx
cmovnle rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 58
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
sub al, 69
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
movzx bx, bl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
btc rdx, rcx
test edx, edi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 74
add sil, dl
mul ax
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
adc eax, -1127383570
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
cmovnz rcx, rcx
add ecx, 99
bts dx, ax
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
