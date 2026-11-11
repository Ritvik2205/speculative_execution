.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
cmovnb edi, ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add sil, 110
cmovnbe edx, ebx
cmovnb ecx, edi
cmovle rcx, rbx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 42
sbb rdx, rdi
sub bl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 53
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
or bl, al
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and edx, 51
imul ax, dx
xchg di, ax
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
imul dx, cx, 91
test bl, al
test cl, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sub rcx, 55
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
movzx rbx, dx
adc sil, dl
bts eax, 209
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
cmovns ebx, esi
movsx edi, sil
sub ebx, 44
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
add esi, -5
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
sub rdi, 69
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 54
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
xchg bx, ax
xchg eax, ecx
cmovle edx, ebx
cmovo rcx, rdi
not rbx
cmovno ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
