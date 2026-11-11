.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rax
and dl, dil
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 51
cmovnbe rdx, rcx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
lea ebx, qword ptr [rdi + rbx]
cmp al, al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
movsx rbx, cx
add rbx, rax
add edi, esi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add ecx, edx
btr di, dx
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 76
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
sub ebx, eax
test dil, 41
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
adc dx, 42
bt esi, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
