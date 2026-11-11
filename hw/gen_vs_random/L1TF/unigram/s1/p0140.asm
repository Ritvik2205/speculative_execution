.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle dl
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
sbb ecx, 44
mov si, dx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 89
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 80
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 57
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
jmp .bb_0.1
.bb_0.1:
sbb dil, dil
add al, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 40
and dl, -98
add bl, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
