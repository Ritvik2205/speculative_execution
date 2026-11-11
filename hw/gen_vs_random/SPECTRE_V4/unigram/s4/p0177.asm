.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx
cmp dl, 65
cmovb eax, edx
cmp al, 81
sub dil, al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 16
xchg rdi, rdx
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
add dx, -90
or edi, 47
movsx rax, dx
test ebx, 1263899340
movsx eax, dil
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
mov rdi, 51
sub ebx, 25
xchg ax, si
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
imul bx
or rax, rdi
sbb dl, -99
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 65
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
adc rcx, rdx
sub dl, 43
add al, 5
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
cmp dx, di
cmovo rax, rax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
test bx, -1599
add cl, 56 # instrumentation
cmovle rsi, rcx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 90
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
or cx, di
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
or bl, sil
imul rbx, rcx, 58
bt ebx, edi
movzx cx, cl
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
