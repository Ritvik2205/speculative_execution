.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
btc ax, 50
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
mov bl, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
adc eax, 1378432629
cmovnle ax, di
or ax, 57
add sil, -18
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
add rax, 1049076260
and sil, cl
movzx rdx, di
mov ebx, 817819255
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edx
and cl, cl
xchg rdi, rax
mov si, -8007
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
dec cl
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
xor al, dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
movsx rdx, di
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 89
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
cmovb bx, cx
inc esi
cmp sil, bl
bts rcx, 73
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
dec sil
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
adc cl, -85
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
adc ebx, -100
cmovp rdi, rcx
cmovno edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
cmovnbe ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
