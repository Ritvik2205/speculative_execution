.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -69
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
movzx rdx, dil
xor cl, sil
xor ax, 22976
cmovnz edx, ecx
setnb bl
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
xchg cl, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
or ax, 11821
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
bts edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
