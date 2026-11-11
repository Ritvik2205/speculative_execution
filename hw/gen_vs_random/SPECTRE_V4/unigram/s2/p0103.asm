.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dl
add dx, dx
sbb dl, -99
adc dl, cl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
adc edi, 99
xchg al, al
add dl, 41
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
adc cl, 46
sbb dil, 98
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
cmovs rax, rdx
cmp dil, -124
add si, 4
neg eax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 64
sub ecx, edi
cmp rax, 1524061352
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
sbb di, -76
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
adc si, 93
adc al, bl
cmovle rsi, rax
add ecx, 48
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
and al, -36
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
cmovz ecx, edi
and al, sil
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
and dx, 1
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
xor edx, 85
sub cl, 116
test eax, edi
add sil, 72 # instrumentation
cmovle si, ax
btc ebx, 94
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add cl, -21 # instrumentation
adc rcx, 76
xor bl, 93
or eax, 2007177863
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
