.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rdi, 105
imul rsi
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
cmovns ebx, ecx
cmp bx, 89
cmovs rdx, rax
mul esi
and bl, 26
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rsi]
sbb dl, cl
mov rsi, rbx
add dil, al
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edi
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edi, ecx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 90
sbb al, -47
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
cmovnbe bx, si
cmp dil, dl
and al, bl
test rcx, -2118888343
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add dl, -114 # instrumentation
cmovl ax, si
adc dx, 24
cmovo dx, si
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add al, al
cmovb rdi, rbx
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
cmovnbe rcx, rdx
and cl, 58
add rdx, 23
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 13
cmovnb bx, bx
and dil, bl
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
xchg ax, cx
sub edx, eax
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 62
btc eax, 14
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
sbb dl, -99
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
