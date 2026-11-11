.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
or dl, 22
xor eax, 1170472196
or rdx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
test rsi, 879594088
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or cl, al
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and dl, -1 # instrumentation
cmovnb cx, di
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
xor cl, bl
cmovns eax, ebx
or ax, -17790
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovl rcx, rax
cmovb rdx, rsi
cmovp rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
