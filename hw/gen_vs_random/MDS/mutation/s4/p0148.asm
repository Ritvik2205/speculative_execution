.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
or cl, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
and dl, -1 # instrumentation
cmovnb cx, di
cmovl rcx, rax
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
cmovns eax, ebx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
cmovp rbx, rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
xor eax, 73
xor cl, bl
or ax, 28091
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
cmovb rdx, rsi
or dl, 22
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
or rdx, rdi
test rsi, 879594088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
