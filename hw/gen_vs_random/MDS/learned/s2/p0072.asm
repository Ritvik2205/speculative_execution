.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 107 # instrumentation
cmovs ecx, ebx
cmovnb dx, bx
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
cmovl rax, rbx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
cmovnbe edi, edx
and rdi, 72
or al, -8
add cl, dl
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp ecx, ebx
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
bts rdi, rdi
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rsi], di
or ax, -4635
bts eax, 103
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
xor eax, 73
and bl, 62
or rax, rdx
or di, -18
add cl, cl
test rax, 1732677821
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
test ebx, 245771113
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
adc dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
setnl dl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 6
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and bl, 67
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test bl, 106
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
cmovnbe dx, cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
