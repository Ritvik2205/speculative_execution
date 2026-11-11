.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or dl, -18
or cl, al
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
xor eax, 1170472196
cmovb rdx, rsi
cmovp rbx, rax
cmovns eax, ebx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovl rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
test rsi, 879594088
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or ax, 6575
or rdx, rdi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and dl, -1 # instrumentation
cmovnb cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
