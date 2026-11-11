.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, bl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and al, -99
add esi, 51
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
add rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
btc dx, 13
bt rsi, rax
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
cmovnl edi, ebx
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
