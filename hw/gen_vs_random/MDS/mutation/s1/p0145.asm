.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or ax, 6575
and dl, -1 # instrumentation
cmovnb cx, di
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
or rdx, rdi
or cl, al
cmovp rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
cmovns eax, ebx
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
xor eax, 1170472196
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
cmovb rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
cmovl rcx, rax
xor cl, bl
or dl, -18
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
test rsi, 879594088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
