.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or cl, al
test rsi, 879594088
or ax, 28091
cmovl rcx, rax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
cmovp rbx, rax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
or dl, 22
xor cl, bl
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
xor eax, 1170472196
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovns eax, ebx
jmp .bb_0.1
.bb_0.1:
btc rdx, 138
and al, -115 # instrumentation
cmovl bx, ax
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovbe ax, bx
cmovnle eax, edx
and al, bl
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
