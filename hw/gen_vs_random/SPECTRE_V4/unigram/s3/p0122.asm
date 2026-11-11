.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 7 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rdi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
mul rbx
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 30
xor bl, bl
neg rax
add al, -60 # instrumentation
cmovle rbx, rdi
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 96
test si, 56
cmovb ax, bx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdx
xchg si, cx
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rbx
add dl, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
xor bl, sil
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], ecx
bt di, dx
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
add rcx, rsi
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
sbb di, -105
add cl, 7 # instrumentation
adc si, 14
xor ax, 15671
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
add rsi, rsi
or di, 2
xor edx, eax
add al, -82
movzx rax, cx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
sbb dl, -106
sub bl, cl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test cl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
