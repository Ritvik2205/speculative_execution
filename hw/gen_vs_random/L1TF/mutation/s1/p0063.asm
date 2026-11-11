.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 100 # instrumentation
lea si, qword ptr [rbx]
lea cx, qword ptr [rbx + rsi + 48821]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
lea ebx, qword ptr [rdi]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
add cl, 107 # instrumentation
cmovnl ax, ax
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
jmp .bb_0.1
.bb_0.1:
add bl, 48 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], -5
not esi
or rax, 1808026647
btr eax, 47
add esi, -124
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb dl, -26
adc cl, dl
jmp .bb_0.2
.bb_0.2:
add dl, 76 # instrumentation
sbb ax, 10551
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
imul dx, di, -95
add dl, -10 # instrumentation
cmovns eax, ebx
setle dl
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
cmovo ecx, esi
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
not edi
lea eax, qword ptr [rcx + rcx + 52039]
mul ebx
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 57
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
