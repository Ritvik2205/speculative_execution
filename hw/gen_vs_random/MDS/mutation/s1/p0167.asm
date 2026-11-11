.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -115
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
cmovb rdx, rsi
cmovl rcx, rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
xor cl, bl
xor eax, 1170472196
and dl, -1 # instrumentation
cmovnb cx, di
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
cmovp rbx, rax
cmovns eax, ebx
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
or ax, -17790
test rsi, 879594088
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or rdx, rdi
or cl, al
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
