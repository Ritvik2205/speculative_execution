.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 91 # instrumentation
adc bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovnp ax, di
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
neg ecx
bt ecx, 177
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1772009889
and cl, dl
adc dx, bx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
or rcx, rdx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and bl, dl
cmovo eax, edi
not eax
test rdi, -795635070
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
imul ecx, ecx, -3
sub bl, al
cmovp rsi, rcx
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
xor al, 99
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
bswap rsi
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
cmp cl, bl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
bt dx, 81
mov rdi, rax
imul dl
or esi, edi
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
sub eax, 1050143384
dec dl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
movsx rdx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
