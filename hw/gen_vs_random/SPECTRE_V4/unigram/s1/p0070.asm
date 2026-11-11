.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
xchg ax, cx
test eax, -818909344
btc rsi, 225
test rsi, 98
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rdx, 45
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
dec rdi
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
add rcx, 34
sub eax, edx
imul rbx, rsi, 69
cmovnbe rcx, rcx
add sil, 110
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 95
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, ecx
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
or eax, 2007177863
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 49
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
cmp sil, dl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
cmovs rdx, rbx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
or al, al
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
mov rax, -8696242625349627833
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
sub esi, eax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
cmovs eax, edx
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
