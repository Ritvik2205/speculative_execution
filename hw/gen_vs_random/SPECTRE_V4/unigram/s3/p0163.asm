.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 13
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, ecx
cmovnl ax, bx
movzx rbx, si
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
cmp si, 26
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
sub rdi, 52
sbb eax, -1688332460
adc rax, 1542637830
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
btr di, dx
cmovnb rbx, rdi
add ax, ax
test rbx, 96
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
test al, 80
sub sil, -50
add bl, -109 # instrumentation
sbb ebx, 32
cmp cx, si
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 68
cmovnbe rsi, rdi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, esi
adc rax, rdx
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
dec rdi
and rax, 23
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
add rsi, rdx
xchg dl, al
cmp dil, dil
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
add sil, 56 # instrumentation
cmovle rbx, rsi
adc esi, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
