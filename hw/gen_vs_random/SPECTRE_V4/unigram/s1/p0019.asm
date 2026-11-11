.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -437098167
sbb di, -76
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 63
sub rax, -701741274
cmovp di, dx
and rax, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
bt edx, 20
cmovb rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
test dl, 19
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
btc rax, 50
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
cmovb ecx, ecx
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
btc rdx, 76
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
xchg bl, sil
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 98
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], ebx
adc eax, -79
adc sil, bl
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 83
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
cmovb ecx, eax
cmovnz edi, ebx
xor si, ax
or cx, 51
add ebx, eax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
cmovnbe rdx, rdi
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
test rbx, 76
or al, dil
sub al, 50
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
