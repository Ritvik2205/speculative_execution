.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 91 # instrumentation
adc bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovnp ax, di
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
neg ecx
bt ecx, 247
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and cl, dl
adc dx, bx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
or rcx, rdx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and bl, dl
cmovo eax, edi
not eax
test rdi, -795635070
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
cmovz edi, edx
cmovp si, ax
xor dl, bl
test ax, ax
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
or edx, 1 # instrumentation
add al, 49 # instrumentation
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc cl, bl
cmovnle si, di
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
imul eax, ebx, -12
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and sil, -84
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
sub rax, -1066968986
btr si, 114
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
neg rcx
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
