.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -72
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
cmovle rax, rdx
cmovs rax, rsi
add rbx, 9
movzx rcx, si
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
dec rdx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
test bl, sil
xor di, si
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 80
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
sbb rax, 183833426
imul bx
sub sil, sil
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
sub dil, -10
sub al, 99
sbb al, sil
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
imul edx, esi, 88
add cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 73
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
add sil, -26 # instrumentation
btr esi, 70
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
xor al, cl
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 19
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
movzx rcx, sil
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
add al, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
cmp cx, 38
test rdx, 29
xchg ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
dec dl
cmovp ecx, ecx
add al, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
cmp bl, cl
xor rbx, 80
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
