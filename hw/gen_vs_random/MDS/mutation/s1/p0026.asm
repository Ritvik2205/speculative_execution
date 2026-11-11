.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -115
cmovp rbx, rax
or cl, al
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
or ax, 28091
test rsi, 879594088
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
cmovns eax, ebx
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
cmovl rcx, rax
cmovb rdx, rsi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
xor eax, 73
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
xor cl, bl
and dl, -1 # instrumentation
cmovnb cx, di
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
