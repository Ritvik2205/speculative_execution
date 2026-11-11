.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
sub esi, 17
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
xchg esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
xchg esi, ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
add dl, -53 # instrumentation
lea rbx, qword ptr [rax + rsi + 18297]
cmovnle rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
test rax, -1576813424
lea di, qword ptr [rbx + rdx]
not edx
jmp .bb_0.2
.bb_0.2:
lea eax, qword ptr [rsi + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or ax, -18131
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xchg dl, dl
sub dil, 87
movzx edx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
cmp di, -78
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
or bl, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
