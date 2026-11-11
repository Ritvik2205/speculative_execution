.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ebx, ebx
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 70
add cl, -8 # instrumentation
xchg dl, cl
or sil, sil
xor di, 93
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
adc rbx, 60
sub sil, al
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 99
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 36
and bl, dl
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 6
or ax, -29521
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
adc ecx, 55
adc cl, cl
cmp al, -78
add dl, -4 # instrumentation
cmovp cx, dx
cmovbe rbx, rdi
cmovnle rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
cmp dl, -82
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
or di, bx
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
sub bx, cx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rsi]
or sil, -47
adc esi, 79
and bx, 67
xor bx, si
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
cmovl dx, di
mov ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
xor cl, sil
adc edi, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
