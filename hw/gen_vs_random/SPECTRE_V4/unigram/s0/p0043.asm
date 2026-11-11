.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
add edi, 46
and ebx, -122
btc rax, rdx
or cl, cl
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
cmp eax, edi
cmovs rax, rbx
sbb esi, 59
sub esi, edi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
xor ebx, -62
or di, si
adc rax, 519150753
test rdx, -1074289902
test sil, 16
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
dec dil
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 20
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
add rax, 1049076260
adc al, al
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 89
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 65
test ecx, edi
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
add cl, bl
xor al, 55
add cl, -62
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], di
cmovbe rdi, rdx
bt rcx, rdi
xor sil, 74
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
and di, bx
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
