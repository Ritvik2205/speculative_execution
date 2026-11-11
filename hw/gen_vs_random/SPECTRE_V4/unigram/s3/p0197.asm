.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
imul si
or cl, 12
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
xor al, al
not dl
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
neg esi
mov rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor cl, -73
xor di, 94
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
bts ecx, 0
sub rdi, -34
neg dl
test ecx, -907816607
test ebx, 62
add dl, -79 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
add dl, 59 # instrumentation
cmovno rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
cmovnbe edx, eax
inc eax
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
add rdx, rax
movzx ebx, dl
add al, 89 # instrumentation
cmovnle bx, dx
xor eax, -1772786275
cmovbe rax, rcx
xor dil, -23
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
cmovl eax, edi
or dl, bl
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
xor ecx, ecx
not rcx
cmp sil, dl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
add al, -6
and rax, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rax]
or dx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
