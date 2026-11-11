.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
cmp cl, bl
xor dl, -123
bts rdi, 23
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
test rdx, rbx
or rbx, -107
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
or al, al
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 80
mov esi, 1115061743
bt ax, 248
or al, -16
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
xchg dil, dil
add dil, -61
test ax, si
dec al
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
adc si, -74
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 27
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
sub rdx, 44
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
movzx rax, di
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
dec dil
sub bx, dx
sub bx, 24
mov eax, edx
test edi, 2142010790
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 61
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
or cx, dx
movsx rdx, di
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or dl, dl
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
neg sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
