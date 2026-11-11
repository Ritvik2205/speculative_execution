.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
cmp bl, al
add dl, 46 # instrumentation
adc dx, di
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
imul bx, si
cmovle edx, eax
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 90
xor rsi, rdx
cmp al, 75
and dil, bl
xor cl, -101
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 33
or cl, cl
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
add rcx, 32
btc rcx, 17
cmovnle ecx, ebx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 69
cmp ax, -18179
and rax, 1072797615
cmovnle rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rsi]
imul edx
and sil, al
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
cmp dl, cl
neg ecx
add sil, 68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ebx
or eax, -612395655
bt ecx, 247
cmovo edx, ebx
cmp cl, dil
movzx edx, cl
btc ebx, esi
xchg cl, cl
sbb al, 70
mov dl, -124
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
