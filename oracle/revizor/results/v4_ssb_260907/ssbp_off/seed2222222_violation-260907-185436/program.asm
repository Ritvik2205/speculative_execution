.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx 
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax] 
movzx edi, al 
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx] 
cmovnb edi, ebx 
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax 
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl 
and eax, -1555813586 
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx] 
mov bl, bl 
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi] 
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi] 
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx 
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl 
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx 
add al, -55 
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl 
cmovl ax, bx 
movsx rbx, al 
cmp ebx, ecx 
imul ax, dx 
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx 
xor rax, -111081832 
imul edx, ecx, -116 
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi 
xchg di, di 
add eax, -105 
mov esi, eax 
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx] 
cmovnp rsi, rax 
adc sil, 88 
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx] 
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax] 
btr ebx, 116 
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx] 
add bl, -38 
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx] 
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37 
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi 
test al, bl 
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx] 
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi] 
cmp dl, dil 
sub cl, dl 
cmp dl, al 
xor al, bl 
sbb dl, cl 
bt ecx, 247 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
