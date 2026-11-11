.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 61
add rdx, rcx
add bl, bl
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rsi]
sbb sil, 108
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
movzx dx, dl
sub edx, 97
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and dl, 73
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test al, 66
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
add cl, 122 # instrumentation
cmovz rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
add eax, ebx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
sbb rdi, rsi
or cx, bx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
sbb dl, -99
cmovz esi, edi
xchg di, cx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
add dl, bl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, eax
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
sub dl, al
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 68
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
imul dx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
bt esi, eax
cmp al, al
or bx, -111
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
