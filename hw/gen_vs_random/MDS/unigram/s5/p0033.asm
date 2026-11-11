.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rsi, rsi
or bl, al
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
btc ecx, ebx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
or ebx, -15
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
cmovnz bx, dx
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and dl, -73
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
btc ax, cx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and al, 20 # instrumentation
cmovp di, ax
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
