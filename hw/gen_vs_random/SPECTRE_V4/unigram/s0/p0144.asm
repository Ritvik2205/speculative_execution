.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, edx
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
cmp al, dl
mul dl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
sub al, al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
xor edi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
sub bl, 17
xchg al, al
sub bl, sil
cmovnl rbx, rdi
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
xor rdx, rax
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
movsx ecx, sil
add ax, -15653
cmovnb ebx, ecx
cmovnle ax, si
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 71
imul bx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 30
or al, sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
add bx, 110
bts rdx, rax
mul rbx
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor ax, 28088
cmovnl rax, rax
sub ecx, 86
imul dx, cx
bt esi, eax
sbb eax, ebx
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
test sil, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor cl, al
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
bts rdi, 82
sbb bl, -94
xor dl, 3
adc cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
