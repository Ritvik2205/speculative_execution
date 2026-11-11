.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
sbb al, sil
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
sub bx, dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 14
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 26
sub eax, -523763262
sbb ax, -26881
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmovle ax, bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
or si, ax
imul sil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 30
cmovnl rax, rcx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 41
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
test ebx, -595096626
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
add bl, -72
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 85
add rax, rdi
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
cmovle esi, eax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
add bl, -72
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
not di
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
cmovnle ecx, esi
cmovb dx, dx
mov dl, dl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
