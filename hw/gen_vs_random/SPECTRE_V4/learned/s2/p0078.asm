.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 33
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 46
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
sbb rax, 183833426
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
or eax, -1434249782
and rdi, -2
adc esi, 90
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 52
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
dec cx
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 86
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
not cl
bts esi, 241
cmovnl si, cx
bts di, 79
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and al, -127
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 49
and cx, 17
sub dl, al
add rdi, -94
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
test dil, sil
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
add al, 5
cmp dil, -124
cmovnbe rbx, rcx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test al, 66
cmp bl, 13
cmp ax, -15031
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
add dl, cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, cx
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
