.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl eax, ecx
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
mov cl, sil
bt ax, dx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 19
add dl, bl
adc rax, rsi
sub rax, rdi
xor sil, al
adc al, al
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
add dil, -61
bt rbx, 52
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
imul ebx
cmovnle dx, si
test esi, -222751961
add cl, cl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or di, 0b1000000000000000 # instrumentation
bsf cx, di
movsx rbx, ax
mov bl, -69
or dl, 71
cmovbe cx, ax
sub dl, -16
mov sil, bl
cmovl eax, edx
neg ebx
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
sbb rcx, -73
add sil, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 37
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
cmovle rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax], 61
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
sbb ecx, 55
sbb eax, 1675303701
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rbx
test eax, esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
btr rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
