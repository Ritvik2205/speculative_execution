.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 27
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
and dx, 1
cmovnbe rbx, rcx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
cmp sil, 88
sbb bl, al
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
or al, al
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
sub dl, dl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, esi
imul sil
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 77
and dl, dil
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 18
sub dl, dl
cmovs ebx, edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 96
sbb bl, al
and sil, al
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
or edx, -127
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
movzx ax, al
movzx ax, bl
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
dec rdx
sub dil, al
cmp cl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmovb rdi, rax
test edx, 573099753
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, bx
adc sil, cl
sub eax, 2030845821
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
