.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
btr di, 89
btc dx, bx
and edx, edx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
btc dx, 146
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
btr esi, edi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test di, 65
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
xor dl, -19
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
xor si, 80
btc ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
