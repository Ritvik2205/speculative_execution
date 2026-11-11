.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
add al, 48 # instrumentation
cmovnz ecx, ecx
bts rax, rdi
cmp sil, -11
mov ecx, -1856082135
xor rdx, 122
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
cmovs rbx, rax
mul ebx
sbb dl, al
and al, al
bswap ebx
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
