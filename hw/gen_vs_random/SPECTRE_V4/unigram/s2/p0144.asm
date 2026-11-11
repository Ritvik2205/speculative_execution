.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
add sil, -18
or dl, dl
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
xchg cl, dl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or ecx, 102
cmovnle rdx, rsi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 15
not cl
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
btc edx, esi
add dl, dl
sub al, cl
adc rax, 1682231791
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
test ebx, 48
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
add bl, -2 # instrumentation
cmovs rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and ebx, ecx
cmovnle rax, rax
cmovnle si, ax
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 48
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
mov dil, cl
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 100
dec dx
btr rbx, rsi
cmovbe rcx, rbx
xchg dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
