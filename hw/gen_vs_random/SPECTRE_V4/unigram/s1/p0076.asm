.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rdi
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 93
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
add al, 122 # instrumentation
cmovns edi, esi
neg al
inc eax
or si, 0b1000000000000000 # instrumentation
bsr dx, si
adc bl, 89
add rax, rsi
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
add dl, -94 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 100
movzx rbx, cl
sub bl, dil
xchg ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
xor ax, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
or dl, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test bx, si
test dl, dil
xor ax, cx
or ax, si
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
adc dl, bl
and cl, 58
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 18
add dil, dil
cmovnle esi, eax
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
xor bl, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and al, cl
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 35
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
