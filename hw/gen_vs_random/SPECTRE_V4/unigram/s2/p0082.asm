.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
mov al, -114
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor rdi, rbx
or ax, -26182
movsx rax, sil
sub sil, -35
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
cmovb ecx, esi
add rdi, 111
movzx si, al
or rdi, rcx
cmovnle cx, si
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
sbb dl, dil
add cl, -9
xor cl, -15
sub dl, 107
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
or ebx, 1 # instrumentation
add al, 49 # instrumentation
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
cmp dil, -92
adc ecx, 55
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 70
and ax, cx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
xor rsi, -102
add bl, dil
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
xchg dx, dx
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rdx
add al, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
cmp eax, 64
test al, dl
test dx, ax
sub cl, cl
xor cx, -80
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
xchg bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
