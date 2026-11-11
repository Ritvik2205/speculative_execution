.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
cmovb rdx, rsi
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
test rsi, 879594088
or rdx, rdi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
or dl, -115
xor eax, 73
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
cmovp rbx, rax
or ax, -4635
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
cmovns eax, ebx
or cl, al
and dl, -1 # instrumentation
cmovnb cx, di
cmovl rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
