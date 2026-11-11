.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -101
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
mov al, 60
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 97
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, ebx
add bl, bl
test rdx, 69
inc rsi
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 19
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
lea ebx, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
sub rsi, 26
mul cl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
cmovp rdi, rsi
or bx, dx
sub eax, 2
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
mul rbx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
add sil, 110
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 78
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add sil, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
