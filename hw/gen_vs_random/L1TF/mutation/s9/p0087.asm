.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
test rcx, rdi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
add al, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], -44
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test rsi, 493258429
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
cmovnbe rbx, rdx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
jmp .bb_0.2
.bb_0.2:
add dl, -123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
setp dl
movsx ecx, di
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
add al, -102
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
add al, 112 # instrumentation
cmovnle edi, ecx
mul esi
test bx, si
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], -62
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
